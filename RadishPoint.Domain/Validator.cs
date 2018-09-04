using System.Linq;
using RadishPoint.Domain.Exceptions;

namespace RadishPoint.Domain
{
    public class Validator
    {
        // prevent faulty user input
        public static bool ValidateInput(Number number)
        {
            // initialize minus and period counters
            var periodCounter = 0;
            // track quantity of minuses and periods in input array
            foreach (var digit in number.inputArray)
            {
                if (digit == '.')
                {
                    periodCounter++;
                }
                // ensure every char in input array exists in origin numeral system
                else if (!number.originNumeralSystem.Contains(digit))
                {
                    throw new OriginNumeralSystemLacksCharacterException(number.originNumeralSystemName);
                }
            }
            // throw exceptions if input contains multiple periods
            if (periodCounter > 1)
            {
                throw new TooManyPeriodsException();
            }
            // unary lacks 0 and fractional numbers
            if ((number.input.Contains('0') && number.targetBase == 1)
                || (number.input.Contains('.') && number.targetBase == 1))
            {
                throw new NoDogsOnTheMoonException();
            }

            return true;
        }
    }
}
