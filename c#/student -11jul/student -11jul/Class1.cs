using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace student__11jul
{
    
        public class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Mark { get; set; }
        public char Grade
        {
            get
            {
                if (Mark >= 90)
                    return 'A';
                else if (Mark >= 80)
                    return 'B';
                else if (Mark >= 70)
                    return 'C';
                else
                    return 'D';
            }
        }
        /**public Employee(int id)
        {
            Id = id;
        }
        public Employee(int id, string name)
        {
            Id = id;
            Name = name;
        }**/
        public Student(int id, string name, int mark)
        {
            Id = id;
            Name = name;
            Mark = mark;

        }
        public void display()
        {
            Console.WriteLine("id" + Id);
            Console.WriteLine("name" + Name);
            Console.WriteLine("mark" + Mark);
            Console.WriteLine("grade" + Grade);
        }
    }
}

