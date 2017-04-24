using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Doancanhan.Startup))]
namespace Doancanhan
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
