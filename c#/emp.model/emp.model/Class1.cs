namespace empmodel
{
    public class employee
    {
        //public class empid
        //{
        //    int empnumber;
        //    static int nextnum;
        //    static emp()
        //    {
        //        nextnum = 1000;
        //    }
        //    empnum()
        //    {
        //        empnumber=++nextnum;
        //    }
        //}
        public string Id { get; private set; }
       public string Name { get; set; }
        public double Salary { get; set; }
        public string EmployeeType { get; set; }
        static int count;
        static employee() {
            count = 1000;
        }
        public employee(string name,double salary,string type)
        {
            Id = "emp"+count++;
            Name = name;
            Salary = salary;
            EmployeeType = type;


        }
        public void Display() {
            Console.WriteLine(Id);
            Console.WriteLine(Name);
            Console.WriteLine(Salary);
            Console.WriteLine(EmployeeType);
        }
        public void employeecount() {
            Console.WriteLine("total"+ (count-1000));
        }
    }
}