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
    
    public partial class Order
    {
        public string C_First_Name { get; set; }
        public string C_Last_Name { get; set; }
        public string C_Address { get; set; }
        public string C_City { get; set; }
        public string C_State { get; set; }
        public string C_Country { get; set; }
        public int OrderID { get; set; }
        public string UserID { get; set; }
        public Nullable<decimal> Total { get; set; }
        public Nullable<int> Product_ID { get; set; }
        public string C_Zip_Code { get; set; }
    
        public virtual Product Product { get; set; }
    }
}
