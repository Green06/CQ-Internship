using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeApplication.Model.Models
{
    public class Employee
    {
        public object? departmentId;

        public int id { get; set; }
        public string? FirstName { get; set; }

        public string? LastName { get; set;}

        public string? Email { get; set; }
        //public object EMail { get; set; }
        public int PhoneNumber { get; set; }

        public int DepartmentId { get; set; }

    }
}
