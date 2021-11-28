using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MinMaxSum
{
    class Program
    {
        public static void PrintMinMaxSum( long [] arrNumbers)
        {
            long minSum = 0;
            long maxSum = 0;
            Array.Sort(arrNumbers);

            for (int i = 0; i < 4; i++)
            {
                minSum += arrNumbers[i];
            }

            for (int i = 4; i > 0; i--)
            {
                maxSum += arrNumbers[i];
            }
            Console.WriteLine($"min sum:{minSum} max sum:{maxSum}");
        }
        static void Main(string[] args)
        {
            Console.WriteLine("please enter five numbers with spaces in between:");
            string numbers = Console.ReadLine();
            long[] numbersArr = numbers.Split(' ').Select(Int64.Parse).ToArray();
            if (numbersArr.Length > 5 || numbersArr.Length < 5)
            {
                throw new FormatException( "input too long/short!");
            }
            else
            {
                PrintMinMaxSum(numbersArr);
                Console.ReadLine();
            }
        }
    }
}
