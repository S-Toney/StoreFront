using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StoreFront.DATA.EF; //Added for Domain Models (Product?)
using System.ComponentModel.DataAnnotations; //validation/display metadata

//Shopping Cart Functionality

namespace StoreFront.UI.Models
{
    public class CartItemViewModel
    {
        [Range(1, int.MaxValue)]//ensures values are greater than zero
        public int Qty { get; set; }
        public Product Product { get; set; }
        public CartItemViewModel(int qty, Product product)
        {
            Qty = qty;
            Product = product;
        }
    }
}