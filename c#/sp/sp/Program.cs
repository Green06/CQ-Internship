using Microsoft.Data.SqlClient;
using sp;

    class Program
    {
        public static void Main(string[] args)
        {
           Database stu = new Database();
        //int data = stu.AddStudent("ch");
        //Console.WriteLine(data);

        int data2 = stu.AddStudentProc("yhgdkjahswdgf", 18, 100, "cse");
        Console.WriteLine(data2);
    }
    }
