using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using RadishPoint.Domain;
using RadishPoint.Domain.Exceptions;

namespace RadishPoint
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void equalsButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (num1TextBox.Text.Trim(' ').Length == 0 || num2TextBox.Text.Trim(' ').Length == 0)
                {
                    throw new NothingWillComeOfNothingException();
                }
                else if (num1TextBox.Text.Trim(' ') == "." || num2TextBox.Text.Trim(' ') == ".")
                {
                    throw new IsNaNException();
                }
                else
                {
                    // clear calculationLabel
                    calculationLabel.Text = "";

                    // instantiate three Number objects
                    Number number1 = new Number(Convert.ToInt16(num1DropDownList.SelectedValue),
                        Number.MasterNumeralSystem.Take(Convert.ToInt16(num1DropDownList.SelectedValue)).ToList(),
                        num1DropDownList.SelectedItem.Text,
                        num1TextBox.Text);

                    Number number2 = new Number(Convert.ToInt16(num2DropDownList.SelectedValue),
                        Number.MasterNumeralSystem.Take(Convert.ToInt16(num2DropDownList.SelectedValue)).ToList(),
                        num2DropDownList.SelectedItem.Text,
                        num2TextBox.Text);

                    Number targetNumber = new Number(10,
                        Number.MasterNumeralSystem.Take(10).ToList(),
                        Convert.ToInt16(targetDropDownList.SelectedValue),
                        Number.MasterNumeralSystem.Take(Convert.ToInt16(targetDropDownList.SelectedValue)).ToList());

                    // prepare user inputs for use
                    number1.inputNegative = false;
                    number2.inputNegative = false;
                    if (number1.input[0] == '-')
                    {
                        number1.input = number1.input.TrimStart('-');
                        number1.inputNegative = true;
                    }
                    if (number2.input[0] == '-')
                    {
                        number2.input = number2.input.TrimStart('-');
                        number2.inputNegative = true;
                    }

                    number1.input = number1.input.TrimStart(' ', '0');
                    number2.input = number2.input.TrimStart(' ', '0');

                    if (number1.input.Contains('.'))
                    {
                        number1.input = number1.input.TrimEnd('0');
                    }
                    if (number2.input.Contains('.'))
                    {
                        number2.input = number2.input.TrimEnd('0');
                    }

                    if (number1.input == "." || number1.input.Length == 0)
                    {
                        number1.input = "0";
                    }
                    if (number2.input == "." || number2.input.Length == 0)
                    {
                        number2.input = "0";
                    }

                    number1.inputArray = number1.input.ToCharArray();
                    number2.inputArray = number2.input.ToCharArray();

                    // determine operation
                    char operation;
                    if (additionRadioButton.Checked)
                    {
                        operation = '+';
                    }
                    else if (subtractionRadioButton.Checked)
                    {
                        operation = '-';
                    }
                    else if (multiplicationRadioButton.Checked)
                    {
                        operation = '*';
                    }
                    else
                    {
                        operation = '/';
                    }

                    // validate user input
                    if (Validator.ValidateInput(number1)
                        && Validator.ValidateInput(number2))
                    {
                        // convert input to decimal
                        number1.inputAsDecimal = Converter.ConvertInputToDecimal(number1);
                        number2.inputAsDecimal = Converter.ConvertInputToDecimal(number2);

                        // prepare inputAsDecimal for use, preventing scientific notation
                        number1.inputAsDecimalString = number1.inputAsDecimal.ToString(Formatter.Notation);
                        number1.inputAsDecimalArray = number1.inputAsDecimalString.ToCharArray();

                        number2.inputAsDecimalString = number2.inputAsDecimal.ToString(Formatter.Notation);
                        number2.inputAsDecimalArray = number2.inputAsDecimalString.ToCharArray();

                        // do math in decimal
                        targetNumber.inputAsDecimal = DecimalCalculator.Calculate(number1, number2, operation);

                        // handle negative
                        targetNumber.inputNegative = false;
                        if (targetNumber.inputAsDecimal < 0)
                        {
                            targetNumber.inputNegative = true;
                            targetNumber.inputAsDecimal = targetNumber.inputAsDecimal * -1;
                        }

                        // prep calculationResult for use
                        targetNumber.inputAsDecimalString = targetNumber.inputAsDecimal.ToString(Formatter.Notation);
                        targetNumber.inputAsDecimalArray = targetNumber.inputAsDecimalString.ToCharArray();

                        // convert math result to target base
                        targetNumber.targetResult = Converter.ConvertDecimalToTarget(targetNumber);

                        // display results
                        calculationLabel.Text = Formatter.FormatCalculationForDisplay(number1, number2, targetNumber, operation);

                        // reset the board
                        num1TextBox.Text = "";
                        if (targetNumber.inputNegative)
                        {
                            num1TextBox.Text = "-";
                        }
                        num1TextBox.Text += targetNumber.targetResult;
                        num1DropDownList.SelectedValue = targetDropDownList.SelectedValue;
                        num2TextBox.Text = "";
                        num2DropDownList.SelectedValue = targetDropDownList.SelectedValue;
                    }
                }
            }
            // exception handling
            catch (NothingWillComeOfNothingException)
            {
                calculationLabel.Text = "<span style='color:#B33A3A;'>Please fill out all required fields</span>";
            }
            catch (IsNaNException)
            {
                calculationLabel.Text = "<span style='color:#B33A3A;'>Please enter a valid number</span>";
            }
            catch (OriginNumeralSystemLacksCharacterException ex)
            {
                calculationLabel.Text = "<span style='color:#B33A3A;'>Please only enter characters that exist in the " + ex.NumeralSystemName + " numeral system</span>";
            }
            catch (TooManyPeriodsException)
            {
                calculationLabel.Text = "<span style='color:#B33A3A;'>Please do not enter multiple periods</span>";
            }
            catch (NoDogsOnTheMoonException)
            {
                calculationLabel.Text = "<span style='color:#B33A3A;'>The Base 1 (Unary) numeral system lacks fractions and the digit 0</span>";
            }
            catch (OverflowException)
            {
                calculationLabel.Text = "<span style='color:#B33A3A;'>Input exceeds the maximum value of the C# long data type and cannot be processed</span>";
            }
            catch (Exception ex)
            {
                calculationLabel.Text = "<span style='color:#B33A3A;'>The following error has occurred: " + ex.Message + "</span>";
            }
        }
    }
}