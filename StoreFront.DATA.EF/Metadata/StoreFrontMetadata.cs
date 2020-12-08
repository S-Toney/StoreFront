using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace StoreFront.DATA.EF//.Metadata
{
    class StoreFrontMetadata
    {
        #region Availability Metadata
        public class AvailabilityMetadata
        {
            [Required]
            [StringLength(12, ErrorMessage ="* Must be 12 characters or less")]
            [Display(Name ="Status")]
            public string Status { get; set; }
        }

        [MetadataType(typeof(AvailabilityMetadata))]
        public partial class Availability { }
        #endregion

        #region Category
        public class CategoryMetadata
        {
            [Required]
            [Display(Name ="Category")]
            [StringLength(30, ErrorMessage ="* Must be 30 Characters or less")]
            public string CategoryName { get; set; }
        }

        [MetadataType(typeof(CategoryMetadata))]
        public partial class Category { }
        #endregion

        #region Department
        public class DepartmentMetadata
        {
            [Required]
            [Display(Name = "Department")]
            [StringLength(30, ErrorMessage = "* Must be 30 Characters or less")]
            public string DaptName { get; set; }
        }

        [MetadataType(typeof(DepartmentMetadata))]
        public partial class Department { }
        #endregion


    }
}
