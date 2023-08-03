using System.ComponentModel;

class Program
{
    public static void Main(string[] args)
    {
        int[] arr = { 1, 2, 3 };
        List<int> list = new List<int>();
        for (int i = 0; i < arr.Length; i++)
        {
            list.Add(arr[i]*2); 
        }
        foreach (int i in list)
            Console.WriteLine(i);
    }
}