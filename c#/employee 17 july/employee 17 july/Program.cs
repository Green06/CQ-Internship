


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

        IBonusCalculator permanentBonusCalculator = new PermanentEmployeeBonusCalculator();
        IBonusCalculator contractBonusCalculator = new ContractEmployeeBonusCalculator();

        double permanentEmployeeBonus = permanentBonusCalculator.CalculateBonus(permanentEmployee);
        double contractEmployeeBonus = contractBonusCalculator.CalculateBonus(contractEmployee);

        Console.WriteLine("Bonus for Permanent Employee: " + permanentEmployeeBonus);
        Console.WriteLine("Bonus for Contract Employee: " + contractEmployeeBonus);
    }
}

