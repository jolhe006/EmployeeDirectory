using System.ComponentModel.DataAnnotations;

namespace EmployeeDirectory.Models
{
    public class EmployeeModel
    {
        [Required(AllowEmptyStrings = false, ErrorMessage = "El Id es requerido.")]
        [DataType(DataType.Text)]
        [Display(Name = "#")]
        public int id_employee { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "El Usuario es requerido.")]
        [DataType(DataType.Text)]
        [MaxLength(50)]
        [Display(Name = "First Name")]
        public string first_name { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "El Usuario es requerido.")]
        [DataType(DataType.Text)]
        [MaxLength(50)]
        [Display(Name = "Last Name")]
        public string last_name { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "La contraseña es requerida.")]
        [DataType(DataType.EmailAddress)]
        [Display(Name = "E-mail")]
        [MaxLength(50)]
        public string email { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "La contraseña es requerida.")]
        [DataType(DataType.PhoneNumber)]
        [MaxLength(12)]
        [Display(Name = "Phone")]
        public string phone { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "La contraseña es requerida.")]
        [DataType(DataType.Text)]
        [MaxLength(50)]
        [Display(Name = "Department")]
        public string department { get; set; }
    }
}