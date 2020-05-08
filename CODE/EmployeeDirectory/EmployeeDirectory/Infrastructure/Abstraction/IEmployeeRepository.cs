using EmployeeDirectory.Models;

using System.Collections.Generic;

namespace EmployeeDirectory.Infrastructure.Abstraction
{
    public interface IEmployeeRepository
    {
        IEnumerable<EmployeeModel> GetEmployees(string search);
    }
}
