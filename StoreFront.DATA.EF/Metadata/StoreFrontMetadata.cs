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

        #region Categories Metadata
        public class CategoriesMetadata
        {
            [Required]
            [Display(Name ="Category")]
            [StringLength(30, ErrorMessage ="* Must be 30 Characters or less")]
            public string CategoryName { get; set; }
        }

        [MetadataType(typeof(CategoriesMetadata))]
        public partial class Categories { }
        #endregion

        #region Departments Metadata
        public class DepartmentsMetadata
        {
            [Required]
            [Display(Name = "Department")]
            [StringLength(30, ErrorMessage = "* Must be 30 Characters or less")]
            public string DaptName { get; set; }
        }

        [MetadataType(typeof(DepartmentsMetadata))]
        public partial class Departments { }
        #endregion

        #region Employees Metadata
        public class EmployeesMetadata
        {
            [Required]
            [Display(Name ="* Supervisor ID is Requierd")]
            public int DirectReportID { get; set; }

            [Required]
            [StringLength(50, ErrorMessage ="* Must be 50 characters or less")]
            [Display(Name ="First Name")]
            public string EmpFName { get; set; }

            [Required]
            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "Last Name")]
            public string EmpLName { get; set; }

            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "Address")]
            public string EmpAddress { get; set; }

            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "City")]
            public string EmpCity { get; set; }

            [StringLength(2, ErrorMessage = "* Must be 2 characters or less")]
            [Display(Name = "State")]
            public string EmpState { get; set; }

            [StringLength(2, ErrorMessage = "* Must be 2 characters or less")]
            [Display(Name = "Country")]
            public string EmpCountry { get; set; }

            [Required]
            [Display(Name ="Department ID")]
            public int DeptID { get; set; }
        }

        [MetadataType(typeof(EmployeesMetadata))]
        public partial class Employees { }
        #endregion

        #region Manufacturers Metadata
        public class ManufacturersMetadata
        {
            [Required]
            [Display(Name ="Manufacturer")]
            [StringLength(30, ErrorMessage ="* Must be 30 characters or less")]
            public string ManufacturersName { get; set; }
        }
        [MetadataType(typeof(ManufacturersMetadata))]
        public partial class Maunfacturers { }
        #endregion

        #region Orders Metadata
        public class OrdersMetadata
        {
            [Required]
            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "First Name")]
            public string C_First_Name { get; set; }

            [Required]
            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "Last Name")]
            public byte[] C_Last_Name { get; set; }

            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "Address")]
            public string C_Address { get; set; }

            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "City")]
            public byte[] C_City { get; set; }

            [StringLength(2, ErrorMessage = "* Must be 2 characters or less")]
            [Display(Name = "State")]
            public string C_State { get; set; }

            [StringLength(2, ErrorMessage = "* Must be 2 characters or less")]
            [Display(Name = "State")]
            public string C_Country { get; set; }
            
            [Display(Name = "Customer ID")]
            public Nullable<int> CustoemrID { get; set; }

            [Range(0, double.MaxValue, ErrorMessage = "* Must be a valid number - 0 or larger")]
            [DisplayFormat(DataFormatString = "{0:c}", NullDisplayText = "[N/A]")]
            public Nullable<decimal> Total { get; set; }

            [Display(Name = "Product ID")]
            public Nullable<int> Product_ID { get; set; }
        }

        [MetadataType(typeof(OrdersMetadata))]
        public partial class Orders { }
        #endregion

        #region Products Metadata
        public class ProductsMetadata
        {
            [Required]
            [StringLength(50, ErrorMessage ="* Must be 50 characters or less")]
            [Display(Name ="Product")]
            public string ProductName { get; set; }

            [Required]
            [Display(Name ="Manufacturer")]
            public int ManufacturerID { get; set; }

            [Range(0, double.MaxValue, ErrorMessage = "* Must be a valid number - 0 or larger")]
            [DisplayFormat(DataFormatString = "{0:c}")]
            [Display(Name ="Price")]
            public decimal Price { get; set; }

            [Required]
            [Display(Name ="Availability")]
            public int Availability { get; set; }

            [StringLength(50, ErrorMessage = "* Must be 50 characters or less")]
            [Display(Name = "Description")]
            public string Description { get; set; }

            [Display(Name = "Image")]
            public string Image { get; set; }

            [Display(Name = "Size")]
            public string Size { get; set; }

            [Required]
            [Display(Name = "Category ID")]
            public int CategoryID { get; set; }

            [Required]
            [Display(Name ="Operating System")]
            public string OS { get; set; }
        }

        [MetadataType(typeof(ProductsMetadata))]
        public partial class Products { }
        #endregion

        #region Product Writing Type Metadata
        public class ProductWritingTypeMetadata
        {
            [Required]
            [Display(Name ="Product ID")]
            public int ProductID { get; set; }

            [Required]
            [Display(Name = "Writing Type ID")]
            public int WTypeId { get; set; }
        }

        [MetadataType(typeof(ProductWritingTypeMetadata))]
        public partial class ProductWritingType { }
        #endregion

        #region Writing Type Metadata
        public class WritingTypeMetadata
        {
            [Required]
            [StringLength(12, ErrorMessage ="* Must be 12 characters or less")]
            [Display(Name ="Writing Type")]
            public string WTypeName { get; set; }
        }

        [MetadataType(typeof(WritingTypeMetadata))]
        public partial class WritingType { }
        #endregion
    }
}
