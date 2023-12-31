﻿


using employee_17_july;

public class Program
{
    public static void Main(string[] args)
    {
        Employee permanentEmployee = new Employee
        {
            Id = 1,
            Name = "John Doe",
            DateOfJoin = new DateTime(2022, 1, 15),
            Department = "HR",
            Salary = 50000.00,
            JobType = 'P'
        };

        Employee contractEmployee = new Employee
        {
            Id = 2,
            Name = "Jane Smith",
            DateOfJoin = new DateTime(2022, 3, 10),
            Department = "Finance",
            Salary = 40000.00,
            JobType = 'C'
        };

        if (contractEmployee.JobType == 'C')
        {
            IBonusCalculator contractBonusCalculator = new ContractEmployeeBonusCalculator();
            double contractEmployeeBonus = contractBonusCalculator.CalculateBonus(contractEmployee);
            Console.WriteLine("Bonus for Contract Employee: " + contractEmployeeBonus);
        }
        else
        {
            Console.WriteLine("nor valid");
        }

        if(permanentEmployee.JobType =='P')
        {
            IBonusCalculator permanentBonusCalculator = new PermanentEmployeeBonusCalculator();


            double permanentEmployeeBonus = permanentBonusCalculator.CalculateBonus(permanentEmployee);


            Console.WriteLine("Bonus for Permanent Employee: " + permanentEmployeeBonus);

        }
        else { Console.WriteLine("not valid"); }



    }
}

