using System;//Added from template
using System.Collections.Generic;//Added from template
using System.Linq;//Added from template
using StoreFront.UI.MVC.Models;
using System.Data.Entity;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace StoreFront.UI.MVC
{
    // Note: For instructions on enabling IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=301868
    public class MvcApplication : System.Web.HttpApplication
    {
        #region Welcome to the Global.asax
        /*
         * There are times when a developer may want to have an 
         * activity occur at the application level, regardless of
         * what page (view) is being rendered.  
         * 
         * There are also specific points in the application lifecycle
         * that we, as developers, want certain things to happen.  This
         * file provides us the ability to run code during specific 
         * points in the application's execution by providing access
         * to a wide range of application lifecycle event methods.
         * 
         * Application_Error()  This eventhandler fires whenever  
         *      an unhandled exception is thrown.
         * 
         * Application_Start()  This method is invoked when the 
         *      application first starts and the application domain
         *      is created.
         * 
         * Session_Start() - this method is invoked each time a new 
         *      session begins (request is issued from a device or
         *      browser for the FIRST Time) and is often used to 
         *      initialize user-specific information.  Session timeout
         *      defaults to 20 minutes or browser closure.  The 20 min
         *      mark can be changed in the web.config (root).    
         *      
         * Session_End() - This method is invoked whenever the user's
         *      session ends.  A session ends when either code explicitly 
         *      releases the session, the browser is closed, or has not
         *      received a request in the stated TimeOut period 
         *      (default 20 min)
         * 
         * Application_BeginRequest() & Application_EndRequest() 
         *      these methods are used in conjunction with a 
         *      multithreaded application.
         * 
         * Application_End() - This method is invoked JUST BEFORE
         *      the application ends due to specific termination of
         *      the application, or explicit shutdown of IIS.  This
         *      method does NOT run if the server suddenly turns off
         *      (power failure)
         */
        #endregion

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Application_Error()
        {
            #region Error Logging
            /*
             We may show the user a custom error page we would also normally log the exception that was encountered.
             We could even put the exception into a variable to get the last error and then clear it out.
                    Exception ex = Server.GetLastError();
                    Server.ClearError();

             To use that exception information later, you would need to put it into a Session variable 
                    Session["lastError"] = ex;
             
             The session variable would allow you to show detailed info about the exception to your user.
             */
            #endregion
        }
    }
}
