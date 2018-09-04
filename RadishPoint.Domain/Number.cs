using System.Collections.Generic;

namespace RadishPoint.Domain
{
    public class Number
    {
        public static readonly List<char> MasterNumeralSystem = new List<char>() { '1', '0', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '/', ':', ';', '(', ')', '$', '&', '@', '"', ',', '?', '!', '\'', '[', ']', '{', '}', '#', '%', '^', '*', '+', '=', '_', '\\', '|', '~', '<', '>', '€', '£', '¥', '•', '₽', '¢', '₩', '§', '¿', '¡', 'ß' };

        public int originBase { get; set; }
        public List<char> originNumeralSystem { get; set; }
        public string originNumeralSystemName { get; set; }
        public int targetBase { get; set; }
        public List<char> targetNumeralSystem { get; set; }
        public string input { get; set; }
        public bool inputNegative { get; set; }
        public char[] inputArray { get; set; }
        public double inputAsDecimal { get; set; }
        public string inputAsDecimalString { get; set; }
        public char[] inputAsDecimalArray { get; set; }
        public string targetResult { get; set; }

        // Convertor constructor
        public Number(int OriginBase, List<char> OriginNumeralSystem, string OriginNumeralSystemName, int TargetBase, List<char> TargetNumeralSystem, string Input)
        {
            originBase = OriginBase;
            originNumeralSystem = OriginNumeralSystem;
            originNumeralSystemName = OriginNumeralSystemName;
            targetBase = TargetBase;
            targetNumeralSystem = TargetNumeralSystem;
            input = Input;
        }

        // Calculator number1 and number2 constructor
        public Number(int OriginBase, List<char> OriginNumeralSystem, string OriginNumeralSystemName, string Input)
        {
            originBase = OriginBase;
            originNumeralSystem = OriginNumeralSystem;
            originNumeralSystemName = OriginNumeralSystemName;
            input = Input;
        }

        // Calculator targetNumber constructor
        public Number(int OriginBase, List<char> OriginNumeralSystem, int TargetBase, List<char> TargetNumeralSystem)
        {
            originBase = OriginBase;
            originNumeralSystem = OriginNumeralSystem;
            targetBase = TargetBase;
            targetNumeralSystem = TargetNumeralSystem;
        }
    }
}
