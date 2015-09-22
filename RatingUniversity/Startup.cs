using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RatingUniversity.Startup))]
namespace RatingUniversity
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
