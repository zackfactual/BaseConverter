using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using RadishPoint.Domain;
using RadishPoint.Domain.Exceptions;

namespace RadishPoint
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void convertButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (inputTextBox.Text.Trim(' ').Length == 0)
                {
                    throw new NothingWillComeOfNothingException();
                }
                else if (inputTextBox.Text.Trim(' ') == ".")
                {
                    throw new IsNaNException();
                }
                else
                {
                    // clear resultLabel
                    resultLabel.Text = "";

                    // instantiate Number object from user inputs
                    Number number = new Number(Convert.ToInt16(originDropDownList.SelectedValue),
                        Number.MasterNumeralSystem.Take(Convert.ToInt16(originDropDownList.SelectedValue)).ToList(),
                        originDropDownList.SelectedItem.Text,
                        Convert.ToInt16(targetDropDownList.SelectedValue),
                        Number.MasterNumeralSystem.Take(Convert.ToInt16(targetDropDownList.SelectedValue)).ToList(),
                        inputTextBox.Text);

                    // prepare input for use
                    if (number.input[0] == '-')
                    {
                        number.input = number.input.TrimStart('-');
                        number.inputNegative = true;
                    }
                    else
                    {
                        number.inputNegative = false;
                    }

                    number.input = number.input.TrimStart(' ', '0');

                    if (number.input.Contains('.'))
                    {
                        number.input = number.input.TrimEnd('0');
                    }

                    if (number.input == "." || number.input.Length == 0)
                    {
                        number.input = "0";
                    }

                    number.inputArray = number.input.ToCharArray();

                    // validate user input
                    if (Validator.ValidateInput(number))
                    {
                        // avoid rounding embarrassment
                        if (number.originBase == number.targetBase)
                        {
                            number.targetResult = number.input;
                        }
                        else
                        {
                            // convert input to decimal
                            number.inputAsDecimal = Converter.ConvertInputToDecimal(number);

                            // prepare inputAsDecimal for use, preventing scientific notation
                            number.inputAsDecimalString = number.inputAsDecimal.ToString(Formatter.Notation);
                            number.inputAsDecimalArray = number.inputAsDecimalString.ToCharArray();

                            // convert decimal to target base
                            number.targetResult = Converter.ConvertDecimalToTarget(number);
                        }
                        // display results
                        resultLabel.Text = Formatter.FormatConversionForDisplay(number);
                    }
                }
            }
            // exception handling
            catch (NothingWillComeOfNothingException)
            {
                resultLabel.Text = "<span style='color:#B33A3A;'>Please fill out all required fields</span>";
            }
            catch (IsNaNException)
            {
                resultLabel.Text = "<span style='color:#B33A3A;'>Please enter a valid number</span>";
            }
            catch (OriginNumeralSystemLacksCharacterException ex)
            {
                resultLabel.Text = "<span style='color:#B33A3A;'>Please only enter characters that exist in the " + ex.NumeralSystemName + " numeral system</span>";
            }
            catch (TooManyPeriodsException)
            {
                resultLabel.Text = "<span style='color:#B33A3A;'>Please do not enter multiple periods</span>";
            }
            catch (NoDogsOnTheMoonException)
            {
                resultLabel.Text = "<span style='color:#B33A3A;'>The Base 1 (Unary) numeral system lacks fractions and the digit 0</span>";
            }
            catch (OverflowException)
            {
                resultLabel.Text = "<span style='color:#B33A3A;'>Input exceeds the maximum value of the C# long data type and cannot be processed</span>";
            }
            catch (Exception ex)
            {
                resultLabel.Text = "<span style='color:#B33A3A;'>The following error has occurred: " + ex.Message + "</span>";
            }
        }
    }
}