
//Write a program to display the below details of a given input string
//Length of the string
//Index of a particular character
//Reverse of the string
//Append Hai at the beginning of the given string
//Last character of the string
//Replace ‘a’ by ‘_’
//Calculate occurrence of given character in a string.


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




