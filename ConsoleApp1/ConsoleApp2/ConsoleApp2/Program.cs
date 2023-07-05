
// See https://aka.ms/new-console-template for more information
Console.WriteLine("enter string");
string eg1 = Console.ReadLine();
int eg2 = Convert.ToInt32(Console.ReadLine());
char eg3 = Convert.ToChar(Console.ReadLine());
bool eg4= Convert.ToBoolean(Console.ReadLine());
Console.WriteLine("eg1" + eg1);
Console.WriteLine("eg2"+eg2);
Console.WriteLine("eg3" + eg3);
Console.WriteLine("eg4" + eg4);

//1.print first 20 numbers using for loop
int first_nuber;
for (first_nuber = 1; first_nuber <= 20; first_nuber++)
{
    Console.WriteLine(first_nuber);
}


//2.print odd numbers less than 50 using while loop
 int odd=1;
while (odd<=50)
{
    
    if (odd%2 == 1)
    {
        Console.WriteLine(odd);
    }
    odd++;
}

//3. Large amount 3 numbers
int num1, num2, num3;
num1 = Convert.ToInt32(Console.ReadLine());
num2 = Convert.ToInt32(Console.ReadLine());
num3 = Convert.ToInt32(Console.ReadLine());**/
//if (num1 == num2 && num1 && num3 || num2&&num3) {
//    Console.WriteLine("equal");
//}
if (num1 > num3 && num1 >num2)
{
    Console.WriteLine(num1 +"is larger");
}
else if (num2 < num3 && num2 < num1)
{ Console.WriteLine(num2 +"is larger"); }
else
{ Console.WriteLine(num3 +"is larger"); }



//4.Reverse of a number
int n, reverse = 0, remainder;
Console.Write("Enter a number: ");
n = int.Parse(Console.ReadLine());
while (n != 0)
{
    remainder = n % 10;
    reverse = reverse * 10 + remainder;
    n /= 10;
}
Console.Write("Reversed Number: " + reverse);

//5.Sum of the digits of a number
int numb,sum=0,rem=0;
Console.WriteLine("enter a number");
numb = int.Parse(Console.ReadLine());
while (numb > 0) { 
rem = numb %10;
sum =sum+rem;
 numb = numb / 10;
}
Console.WriteLine(sum);


//6.Sum of the squares of the digits of a number
int numbe,sum=0,rem=0,sq;
Console.WriteLine("enter a number");
numbe = int.Parse(Console.ReadLine());
while (numbe > 0) { 
rem = numbe %10;
sq = rem * rem;
sum =sum+sq;
numbe = numbe / 10;
}
Console.WriteLine(sum);


//7.Check prime number
int n, i, flag = 0,m=0;
Console.WriteLine("Enter a number ");
n = int.Parse(Console.ReadLine());
m = n / 2;
 for (i = 2; i <= m; i++)
    {
        if (n % i == 0)
        {
            Console.Write("Number is not Prime.");
            flag = 1;
            break;
        }
    }
    if (flag == 0)
        Console.Write("Number is Prime.");  


//8.Print all prime numbers below 100
int i, flag = 0, m = 0,n;
for (n = 0; n <= 100; n++)
{
    m = n / 2;
    for (i = 2; i <= m; i++)
    {
        if (n % i == 0)
        {
            flag = 1;
            break;
        }
    }
    if (flag == 0)
        Console.WriteLine(n);
    flag = 0;
}




//9. Fibonacci series
int n1 = 0, n2 = 1, n3, i, number;
Console.WriteLine("enetr num of elements");
number = int.Parse(Console.ReadLine());
Console.WriteLine(n1);
Console.WriteLine(n2);
for (i = 0; i < number; i++)
{
    n3 = n1 + n2;
    Console.WriteLine(n3);
    n1 = n2;
    n2 = n3;
}


//10. Check palindrome 
int n, rem, sum = 0, temp;
Console.Write("Enter the Number: ");
n = int.Parse(Console.ReadLine());
temp = n;
while (n > 0)
{
    rem = n % 10;
    sum = (sum * 10) + rem;
    n = n / 10;
}
if (temp == sum)
    Console.Write("Number is Palindrome.");
else
    Console.Write("Number is not Palindrome");

//Tax calculation program, input the amount and display the tax
Console.WriteLine("enter the amount");
int amount;
amount=int.Parse(Console.ReadLine());
if (amount < 10000)
    Console.WriteLine("5% tax");
else if (amount < 10000 && amount > 15000)
    Console.WriteLine("7.5% tax");
else if (amount < 15000 && amount > 20000)
    Console.WriteLine("10% tax");
else if (amount < 20000 && amount > 25000)
    Console.WriteLine("12.5% tax");
else
    Console.WriteLine("15% tax");


//Input a character from console and display the sports name corresponding to it

Console.WriteLine("enter a character");
char.TryParse(Console.ReadLine(), out char sport);
switch(sport)
{
    case 'c':
        Console.WriteLine("cricket");
        break;
    case 'f':
        Console.WriteLine("football");
        break;
    case 'h':
        Console.WriteLine("hockey");
        break;
    case 't':
        Console.WriteLine("tennis");
        break;
    case 'b':
        Console.WriteLine("badminton");
        break;
    default :
        Console.WriteLine("invalid");
}


// 13. pattern

        for (int row = 1; row <= 5; ++row)
        {
            for (int col = 1; col <= row; ++col)
            {
                Console.Write("*");
            }

            Console.WriteLine();
        }
    



