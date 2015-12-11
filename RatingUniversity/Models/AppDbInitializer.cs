using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Data.Entity;

namespace RatingUniversity.Models
{
    public class AppDbInitializer : DropCreateDatabaseIfModelChanges<ApplicationDbContext>
	{
		protected override void Seed(ApplicationDbContext context)
        {
            var userManager = new ApplicationUserManager(new UserStore<ApplicationUser>(context));
 
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
 
            // создаем две роли
            var role1 = new IdentityRole { Name = "admin" };
            var role2 = new IdentityRole { Name = "user" };
 
            // добавляем роли в бд
            roleManager.Create(role1);
            roleManager.Create(role2);
 
            // создаем пользователей
            string email = System.Configuration.ConfigurationManager.AppSettings["AdminEmail"];
            string password = System.Configuration.ConfigurationManager.AppSettings["AdminPassword"];

            var admin = new ApplicationUser { Email = email, UserName = email };
            var result = userManager.Create(admin, password);
 
            // если создание пользователя прошло успешно
            if(result.Succeeded)
            {
                // добавляем для пользователя роль
                userManager.AddToRole(admin.Id, role1.Name);
                userManager.AddToRole(admin.Id, role2.Name);
            }
 
            base.Seed(context);
        }
    }
}