using Owin;

namespace StoreFront.UI.MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
/*
 From Template
 using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MDBEcommerce.Startup))]
namespace MDBEcommerce
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
     */
