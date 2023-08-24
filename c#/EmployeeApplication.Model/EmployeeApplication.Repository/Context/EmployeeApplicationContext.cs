using Microsoft.EntityFrameworkCore;
using EmployeeApplication.Model.Models;

namespace EmployeeApplication.Repository.Context
{
    public class EmployeeApplicationContext : DbContext
    {
        public EmployeeApplicationContext(DbContextOptions options)
        : base(options)
        {
        }
        public DbSet<Location> Location { get; set; }
        public DbSet<Department> Department { get; set; }

        public DbSet<Employee> Employee { get; set; }
    }


   

    }
