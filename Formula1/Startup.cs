using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Formula1.Startup))]
namespace Formula1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
