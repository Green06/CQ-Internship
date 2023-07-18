using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace employee_17_july
{

        public class Employee
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public DateTime DateOfJoin { get; set; }
            public string Department { get; set; }
            public double Salary { get; set; }
            public char JobType { get; set; }
        }

        public interface IBonusCalculator
        {
            double CalculateBonus(Employee employee);
        }

        public class PermanentEmployeeBonusCalculator : IBonusCalculator
        {
            public double CalculateBonus(Employee employee)
            {
                return employee.Salary * 0.20;
            }
        }


        public class ContractEmployeeBonusCalculator : IBonusCalculator
        {
            public double CalculateBonus(Employee employee)
            {
                return employee.Salary * 0.15;
            }
        }

    
}
