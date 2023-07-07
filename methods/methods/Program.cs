
//Write a program to display the below details of a given input string
//Length of the string
//Index of a particular character
//Reverse of the string
//Append Hai at the beginning of the given string
//Last character of the string
//Replace ‘a’ by ‘_’
//Calculate occurrence of given character in a string.

/**
Console.WriteLine("enter a string");
string input = Console.ReadLine();


Console.WriteLine("string length " + input.Length);//Length of the string


Console.WriteLine("enter a char to find index");
char ind = Convert.ToChar(Console.ReadLine());
Console.WriteLine("index" + input.IndexOf(ind));
int index1 = input.IndexOf(ind);
Console.WriteLine("The Index Value of character is " + index1);//index


//Console.WriteLine("reverse of string is " + input.Reverse(input));
 char[] stringArray = input.ToCharArray();
 Array.Reverse(stringArray);
string reversedStr = new string(stringArray);
Console.Write($"Actual String is : {input} \n");
Console.Write($"Reversed String is : {reversedStr} ");// reverse

string appendedString = "Hai " + Convert.ToString(input);
Console.WriteLine("Appended string: " + appendedString);//append

char lastCharacter = input[input.Length - 1];
Console.WriteLine("Last character of the string: " + lastCharacter);//last

string replacedString = input.Replace('a', '_');
Console.WriteLine("String with 'a' replaced by '_': " + replacedString);

Console.Write("Enter a character to count its occurrence: ");
char occurrenceChar = Console.ReadKey().KeyChar;
int occurrenceCount = input.Split(occurrenceChar).Length - 1;
Console.WriteLine("\nOccurrence of " + occurrenceChar + " in the string: " + occurrenceCount);


**/

/**
//Rewrite the above program using stringbuilder
using System.Text;
Console.Write("Enter a string: ");
        string input = Console.ReadLine();

        StringBuilder sb = new StringBuilder(input);

        // Length of the string
        int length = sb.Length;
        Console.WriteLine("Length of the string: " + length);

        // Index of a particular character
       Console.Write("Enter a character to find its index: ");
        char character = Console.ReadKey().KeyChar;
        int index = sb.ToString().IndexOf(character);
        Console.WriteLine("\nIndex of " + character + ": " + index);


// Reverse of the string
/**
        sb.Reverse();
        string reverse = sb.ToString();
Console.WriteLine("Reverse of the string: " + reverse);**/
//return new string(sb.ToString().Reverse().ToArray());
// Append "Hai" at the beginning of the given string
/**   sb.Insert(0, "Hai ");
   string appendedString = sb.ToString();
   Console.WriteLine("Appended string: " + appendedString);

   // Last character of the string
   char lastCharacter = sb[sb.Length - 1];
   Console.WriteLine("Last character of the string: " + lastCharacter);

  // Replace 'a' by '_'
   sb.Replace('a', '_');
   string replacedString = sb.ToString();
   Console.WriteLine("String with 'a' replaced by '_': " + replacedString);

   // Calculate occurrence of given character in a string
   Console.Write("Enter a character to count its occurrence: ");
   char occurrenceChar = Console.ReadKey().KeyChar;
   int occurrenceCount = sb.ToString().Split(occurrenceChar).Length - 1;
   Console.WriteLine("\nOccurrence of " + occurrenceChar + " in the string: " + occurrenceCount); **/

/**sb.Reverse();
string reverse = sb.ToString();
Console.WriteLine("Reverse of the string: " + reverse); **/


//

/**Console.WriteLine(DateTime.Now.ToString("MM/dd/yyyy"));
Console.WriteLine(DateTime.Now.ToString("dddd, dd MMMM yyyy"));
Console.WriteLine(DateTime.Now.ToString("MM/dd/yyyy HH:mm"));


DateTime d1 = new DateTime(2020, 8, 27);
DateTime d2 = new DateTime(2023,8, 27);
TimeSpan timeSpan = d1.Subtract(d2);
Console.WriteLine(timeSpan);

var mydate = new DateTime(2023, 4, 4, 23, 38, 30, 989);

mydate.ToString("MM/dd/yy");

DateTime date = DateTime.Now;
date = date.AddDays(10);
**/

using System;
class HelloWorld
{
    public static void Add(out int num1, out int num2)
    {
        num1 = 30;
        num1 += 1;

        num2 = 40;
        num2 += 1;
    }

    public static void sub(out int num1, out int num2)
    {
        num1 = 30;
        num1 += 1;

        num2 = 40;
        num2 += 1;
    }

    public static void mul(out int num1, out int num2)
    {
        num1 = 30;
        num1 += 1;

        num2 = 40;
        num2 += 1;
    }
    public static void div(out int num1, out int num2)
    {
        num1 = 30;
        num1 += 1;

        num2 = 40;
        num2 += 1;
    }



    static void Main()
    {
        // Declare two without assigning a value.
        int num1;
        int num2;

        // Call the Add method and pass it as an out parameter.
        Add(out num1, out num2);
        sub(out num1, out num2);
        div(out num1, out num2);
        mul(out num1, out num2);
        Console.WriteLine("Num1: {0}", num1);
        Console.WriteLine("Num2: {0}", num2);
    }
}