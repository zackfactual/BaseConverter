using System;

namespace RadishPoint.Domain.Exceptions
{
    public class OriginNumeralSystemLacksCharacterException : Exception
    {
        public string NumeralSystemName { get; set; }

        public OriginNumeralSystemLacksCharacterException(string numeralSystemName)
        {
            NumeralSystemName = numeralSystemName;
        }
    }
}
