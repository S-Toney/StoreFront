using System.Web.Optimization;

namespace StoreFront.UI.MVC
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js",
                        "~/Scripts/customjQuery.js",
                        "~/Scripts/customJS.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            //bundles.Add(new ScriptBundle("~/bundles/ajax").Include(
                //"https://cdn.jsdelivr.net/jquery.ajax.unobtrusive/3.2.4/jquery.unobtrusive-ajax.min.js"));
            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            //bundle has Data Table sorting features
            bundles.Add(new ScriptBundle("~/bundles/addedFeatures").Include(
                 "~/Scripts/jquery.dataTables.min.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/mdb.min.css",
                      "~/Content/css/jquery.dataTables.min.css",
                      "~/Content/Site.css",
                      "~/Content/custom.css"));

            BundleTable.EnableOptimizations = false;
        }
    }
}
