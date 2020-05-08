using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace EmployeeDirectory
{
    public class MvcApplication : System.Web.HttpApplication
    {
        /// <summary>
        /// define static logger accessible in the whole project
        /// </summary>
        public static readonly log4net.ILog logger = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            log4net.Config.XmlConfigurator.Configure(); // configuaration log4net
        }
        /// <summary>
        ///  Catch unhandled exceptions
        /// </summary>
        protected void Application_Error()
        {
            var ex = Server.GetLastError();
            //log the error!
            logger.Fatal(ex);
        }
    }
}
