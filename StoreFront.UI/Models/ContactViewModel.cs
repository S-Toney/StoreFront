using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace StoreFront.UI.Models
{
    public class ContactViewModel
    {
        [Required(ErrorMessage = "* First Name is required")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "* Last Name is required")]
        public string LastName { get; set; }
        [Required(ErrorMessage = "* Email is required")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        public string Subject { get; set; }
        [Required(ErrorMessage ="* Message is required")]
        [UIHint("MultilineText")]
        public string Message { get; set; }


    }
}