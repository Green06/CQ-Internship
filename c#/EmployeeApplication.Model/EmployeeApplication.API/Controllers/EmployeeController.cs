
using EmployeeApplication.Model.Models;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Mvc;

namespace EmployeeAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : Controller
    {
        private readonly EmployeeApplicationContext? dbContext;

        public EmployeeController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddEmployee")]
        public IActionResult post(EmployeeClone empC)
        {
            Employee emp = new Employee
            {
                FirstName = empC.FirstName,
                LastName = empC.LastName,
                Email = empC.Email,
                departmentId = empC.DepartmentId,
                PhoneNumber= empC.PhoneNumber,
            };
            dbContext?.Add(emp);
            dbContext?.SaveChanges();
            return Ok(emp);
        }

        [HttpDelete("Delete")]
        public void delete(int id)
        {
            Employee employee = new Employee();
            employee.id = id;
            dbContext?.Remove(employee);
            dbContext?.SaveChanges();
        }
                                                                  
        [HttpGet("GetById")]
        public IActionResult Get(int id)
        {
            return Ok(dbContext?.Employee.Find(id));
        }

        //private IActionResult Ok(object value)
        //{
        //    throw new NotImplementedException();
        //}

        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            return Ok(dbContext?.Employee);
        }

        [HttpPut("Update")]
        public void put(EmployeeClone employeeClone, int id)
        {
            var x = dbContext?.Employee.Find(id);
            x.FirstName = employeeClone.FirstName;
            x.LastName = employeeClone.LastName;
            x.Email = employeeClone.Email;
            x.PhoneNumber = employeeClone.PhoneNumber;
            x.departmentId = employeeClone.DepartmentId;
            dbContext?.SaveChanges();
        }
    }

    
}