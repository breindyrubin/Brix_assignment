using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Recursive
{
    class Program
    {
        public static int SuperDigit(string n,int k=-1)
        {
           
            string p=n;
            int superDigit=0;
            int stringToInt;
            if (k != -1) { 
            for (int i = 1; i < k; i++)
                p += n;
            }
            
                for (int i = 0; i < p.Length; i++)
                {
                    stringToInt = Int32.Parse(p[i].ToString());
                    superDigit += stringToInt;
                }
            if (superDigit/10==0)
                return superDigit;
            return SuperDigit(superDigit.ToString());
        }




        static void Main(string[] args)
        {
           Console.WriteLine("please enter a number then a space, and then another number :");
           string numbers = Console.ReadLine();
           string[] numbersArr = numbers.Split(' ');
           string stringRepresentation = numbersArr[0];
           string timesToConcantenate = numbersArr[1];
           int superDigit = SuperDigit(stringRepresentation, Int32.Parse(timesToConcantenate));
           Console.WriteLine(superDigit);
           Console.Read();
        }
    }
}
