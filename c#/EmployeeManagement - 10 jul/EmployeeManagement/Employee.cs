using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement
{
    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Salary { get; set; }
	public Employee(int id)
        {
            Id = id;
        }
        public Employee(int id, string name)
        {
            Id = id;
            Name = name;
        }
        public Employee(int id, string name, double salary)
        {
            Id = id;
            Name = name;
            Salary = salary;
        }
        public void display()
        {
            Console.WriteLine("id" + Id);
            Console.WriteLine("name" + Name);
            Console.WriteLine("salary" + Salary);
        }
    }
}
