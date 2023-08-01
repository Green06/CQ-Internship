namespace empmodel
{
    internal class Program
    {
        static void Main(string[] args)
        {
            empmodel.employee obj1 = new empmodel.employee("John Doe", 15000, "permanent");
            empmodel.employee obj2 = new empmodel.employee("Liam Smith", 20000, "permanent");
            empmodel.employee obj3 = new empmodel.employee("Mary James", 15000, "permanent");
            obj1.Display();
            obj2.Display();
            obj3.Display();
            obj2.employeecount();

        }
    }
}
