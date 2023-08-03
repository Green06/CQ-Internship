using generic;
public class Program
{
    public static void Main(string[] args)
    {
        MyGenericComparer<int> result1 = new MyGenericComparer<int>();
        Console.WriteLine(result1.compare(5,6));
    }
}