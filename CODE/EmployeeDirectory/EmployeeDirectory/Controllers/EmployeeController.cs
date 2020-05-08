using EmployeeDirectory.Infrastructure.Abstraction;
using EmployeeDirectory.Viewmodels;

using System;
using System.Linq;
using System.Web.Mvc;

namespace EmployeeDirectory.Controllers
{
    public class EmployeeController : Controller
    {
        IEmployeeRepository _IEmployeeRepository;
        public EmployeeController(IEmployeeRepository iEmployeeRepository)
        {
            _IEmployeeRepository = iEmployeeRepository;
        }
        // GET: Employee
        public ActionResult Index(int page = 1, string sort = "first_name", string search = null)
        {
            try
            {
                ViewBag.Title = "Employees Directory";
                var _model = new EmployeeViewmodel(); 
                _model.Page = page; // Set the actual page
                _model.SortOrder = sort.ToLower().Replace(" ", "_"); //format the name of property to sort
                _model.Search = search; // set the parameter to search
                // get  employees inoformation and sort
                _model.Employees = _IEmployeeRepository.GetEmployees(_model.Search).OrderBy(x => x.GetType().GetProperty(_model.SortOrder).GetValue(x)).Select(x => x).ToList();
                // Set the total entries received
                _model.TotalEntries = _model.Employees.Count();
                // Filter result of the actual page
                _model.Employees = _model.Employees.Skip(_model.EntriesByPage * (_model.Page - 1)).Take(_model.EntriesByPage).Select(x => x).ToList();
                return View(_model);
            }
            catch (Exception e)
            {
                MvcApplication.logger.Error(e);
                return View("Error");
            }

        }

        // GET: Employee/Details/5
        [NonAction]
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Employee/Create
        [NonAction]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Employee/Create
        [HttpPost]
        [NonAction]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Employee/Edit/5
        [NonAction]
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Employee/Edit/5
        [HttpPost]
        [NonAction]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                MvcApplication.logger.Error(e);
                return View();
            }
        }

        // GET: Employee/Delete/5
        [NonAction]
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Employee/Delete/5
        [HttpPost]
        [NonAction]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
