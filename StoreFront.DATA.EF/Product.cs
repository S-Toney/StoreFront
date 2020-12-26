//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StoreFront.DATA.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.ProductWritingTypes = new HashSet<ProductWritingType>();
            this.Orders = new HashSet<Order>();
        }
    
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int ManufacturerID { get; set; }
        public decimal Price { get; set; }
        public int Availability { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public string Size { get; set; }
        public int CategoryID { get; set; }
        public string OS { get; set; }
    
        public virtual Availability Availability1 { get; set; }
        public virtual Category Category { get; set; }
        public virtual Manufacturer Manufacturer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductWritingType> ProductWritingTypes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
    }
}
