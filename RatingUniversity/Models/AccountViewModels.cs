using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;

namespace RatingUniversity.Models
{
    public class ExternalLoginConfirmationViewModel
    {
        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Display(Name = "AccountEmail", ResourceType = typeof(Langs.Resource))]
        public string Email { get; set; }
    }

    public class ExternalLoginListViewModel
    {
        public string ReturnUrl { get; set; }
    }

    public class SendCodeViewModel
    {
        public string SelectedProvider { get; set; }
        public ICollection<System.Web.Mvc.SelectListItem> Providers { get; set; }
        public string ReturnUrl { get; set; }
        public bool RememberMe { get; set; }
    }

    public class VerifyCodeViewModel
    {
        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        public string Provider { get; set; }

        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Display(Name = "AccountCode", ResourceType = typeof(Langs.Resource))]
        public string Code { get; set; }
        public string ReturnUrl { get; set; }

        [Display(Name = "Remember this browser?")]
        public bool RememberBrowser { get; set; }

        public bool RememberMe { get; set; }
    }

    public class ForgotViewModel
    {
        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Display(Name = "AccountEmail", ResourceType = typeof(Langs.Resource))]
        public string Email { get; set; }
    }

    public class LoginViewModel
    {
        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Display(Name = "AccountEmail", ResourceType = typeof(Langs.Resource))]
        [EmailAddress(ErrorMessageResourceName = "AccountErrEmail", ErrorMessageResourceType = typeof(Langs.Resource), ErrorMessage="")]
        public string Email { get; set; }

        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [DataType(DataType.Password)]
        [Display(Name = "AccountPassword", ResourceType = typeof(Langs.Resource))]
        public string Password { get; set; }

        [Display(Name = "AccountRememberMe", ResourceType = typeof(Langs.Resource))]
        public bool RememberMe { get; set; }
    }

    public class RegisterViewModel
    {
        [Unique(ErrorMessageResourceName="AccountErrUnique", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [EmailAddress(ErrorMessageResourceName = "AccountErrEmail", ErrorMessageResourceType = typeof(Langs.Resource), ErrorMessage = "")]
        [Display(Name = "AccountEmail", ResourceType = typeof(Langs.Resource))]
        public string Email { get; set; }

        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [StringLength(100, ErrorMessageResourceName = "AccountErrPasswordLength", ErrorMessageResourceType = typeof(Langs.Resource), MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "AccountPassword", ResourceType = typeof(Langs.Resource))]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "AccountConfirmPassword", ResourceType = typeof(Langs.Resource))]
        [Compare("Password", ErrorMessageResourceName = "AccountErrPasswordNotMatch", ErrorMessageResourceType = typeof(Langs.Resource))]
        public string ConfirmPassword { get; set; }

        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Registred(ErrorMessageResourceName = "AccountErrUniversityExist", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Display(Name = "AccountUniversity", ResourceType = typeof(Langs.Resource))]
        public string University_ID { get; set; }

        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [KeyValid(ErrorMessageResourceName = "AccountErrKeyNotMatch", ErrorMessageResourceType = typeof(Langs.Resource))]
        [Display(Name = "AccountCheckKey", ResourceType = typeof(Langs.Resource))]
        public string Check_code { get; set; }
    }

    public class ResetPasswordViewModel
    {
        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [EmailAddress(ErrorMessageResourceName = "AccountErrEmail", ErrorMessageResourceType = typeof(Langs.Resource), ErrorMessage = "")]
        [Display(Name = "AccountEmail", ResourceType = typeof(Langs.Resource))]
        public string Email { get; set; }

        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [StringLength(100, ErrorMessageResourceName = "AccountErrPasswordLength", ErrorMessageResourceType = typeof(Langs.Resource), MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "AccountPassword", ResourceType = typeof(Langs.Resource))]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "AccountConfirmPassword", ResourceType = typeof(Langs.Resource))]
        [Compare("Password", ErrorMessageResourceName = "AccountErrPasswordNotMatch", ErrorMessageResourceType = typeof(Langs.Resource))]
        public string ConfirmPassword { get; set; }

        public string Code { get; set; }
    }

    public class ForgotPasswordViewModel
    {
        [Required(ErrorMessageResourceName = "AccountErrRequired", ErrorMessageResourceType = typeof(Langs.Resource))]
        [EmailAddress(ErrorMessageResourceName = "AccountErrEmail", ErrorMessageResourceType = typeof(Langs.Resource), ErrorMessage="")]
        [Display(Name = "AccountEmail", ResourceType = typeof(Langs.Resource))]
        public string Email { get; set; }
    }

    public class KeyValid: ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            string modelKey = System.Configuration.ConfigurationManager.AppSettings["keyAccess"];
            if (((string)value) != modelKey)
            {
                return new ValidationResult(ErrorMessage);
            }
            else
            {
                return ValidationResult.Success;
            }
        }
    }

    public class Registred: ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
 	        ApplicationDbContext db = new ApplicationDbContext();
            int universityID = int.Parse((string)value);
            var users = db.Users.Where(m => m.University_ID == universityID).ToList();
            if (users.Count > 0)
            {
                return new ValidationResult(ErrorMessage);
            }
            else
            {
                return ValidationResult.Success;
            }
        }
    }

    public class Unique : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            ApplicationDbContext db = new ApplicationDbContext();
            var users = db.Users.Where(m => m.Email == (string)value).ToList();
            if (users.Count > 0)
            {
                return new ValidationResult(ErrorMessage);
            }
            else
            {
                return ValidationResult.Success;
            }
        }
    }
}
