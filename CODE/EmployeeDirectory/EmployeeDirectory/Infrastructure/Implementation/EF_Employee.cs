using EmployeeDirectory.Entities;
using EmployeeDirectory.Infrastructure.Abstraction;
using EmployeeDirectory.Models;

using System;
using System.Collections.Generic;
using System.Linq;

namespace EmployeeDirectory.Infrastructure.Implementation
{
	public class EF_Employee : IEmployeeRepository
    {
		/// <summary>
		/// Get employees from DB
		/// </summary>
		/// <param name="search">parameter to search employees by name</param>
		/// <returns></returns>
        public IEnumerable<EmployeeModel> GetEmployees(string search = null)
        {
			List<EmployeeModel> _result = new List<EmployeeModel>();
			try
			{
				using (var _DbContext = new COMPANYEntities())
				{
					// Call SP to get the employees
					var _spResults = _DbContext.SP_GetEmployees(null, search, null, null, null, null).ToList();
					// Set format from ObjectResult to EmployeeModel
					_result = _spResults.Select(x => new EmployeeModel (){ id_employee = x.id_employee, first_name=x.first_name, last_name=x.last_name, email=x.email, phone=x.phone, department=x.department}).ToList();
				}
				
			}
			catch (Exception e)
			{
				MvcApplication.logger.Error(e);
				_result = new List<EmployeeModel>();
			}

			return _result;
		}
    }
}