using EmployeeDirectory.Models;

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Reflection;

namespace EmployeeDirectory.Viewmodels
{
    /// <summary>
    /// Model for Employee view
    /// </summary>
    public class EmployeeViewmodel
    {
        public int EntriesByPage { get; set; }
        public EmployeeViewmodel()
        {
            try
            {
                Employees = new List<EmployeeModel>();
                EntriesByPage = 10; //default entries by page
            }
            catch (Exception e)
            {
                MvcApplication.logger.Error(e);
            }
        }
        // List of employees 
        public IEnumerable<EmployeeModel> Employees { get; set; }

        /// <summary>
        /// Get the DisplayNames of the properties model
        /// </summary>
        /// <returns></returns>
        public IEnumerable<(string DisplayName, PropertyInfo Info)> GetDisplayNames()
        {
            try
            {
                return this.GetProperties().Select(p => (DisplayName: (p.GetCustomAttributes(typeof(DisplayAttribute), true)[0] as DisplayAttribute).Name, Info: p) ).ToList();
            }
            catch (Exception e)
            {
                MvcApplication.logger.Error(e);
                return new List<(string DisplayName, PropertyInfo Info)>();
            }
        }
        /// <summary>
        /// Get the properties model
        /// </summary>
        /// <returns></returns>
        public IEnumerable<PropertyInfo> GetProperties()
        {
            try
            {
                return Employees.GetType().GenericTypeArguments[0].GetProperties();
            }
            catch (Exception e)
            {
                MvcApplication.logger.Error(e);
                return new List<PropertyInfo>();
            }
        }
        /// <summary>
        /// Get the pages of the results employees
        /// </summary>
        /// <returns></returns>
        public int GetPagesCount()
        {
            return Convert.ToInt32(Math.Ceiling( (decimal)(TotalEntries / EntriesByPage)));
        }
        /// <summary>
        /// Save the total entries from the query
        /// </summary>
        public int TotalEntries { get; set; }
        /// <summary>
        /// Actual page
        /// </summary>
        public int Page { get; set; }
        /// <summary>
        /// Property name to order
        /// </summary>
        public string SortOrder { get; set; }
        /// <summary>
        /// String to search
        /// </summary>
        public string Search { get; set; }
    }
}