using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace studentList
{
    internal class Student
    {
        public string Name { get; set; }
        public double Mark { get; set; }
        public int Id { get; private set; }

       
        public Student(int id, string name, double mark)
        {
            Id = id;
            Name = name;
            Mark = mark;
        }
        public void display()
        {
            Console.WriteLine("id" + Id);
            Console.WriteLine("name" + Name);
            Console.WriteLine("Mark" + Mark);
        }
    }
}
