using ExamenJanvier2023.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenJanvier2023.ViewModel
{
    public  class ProductModel
    {
        private readonly Product _myProduct;
        public Product MyProduct
        {
            get { return _myProduct; }
        }

        public ProductModel(Product myProduct)
        {
            this._myProduct = myProduct;
        }
        
        public int ProductId
        { get { return _myProduct.ProductId;} }

        public string ProductName
        {
            get { return _myProduct.ProductName; }
        }

        public string? CategorieName
        {
            get { return _myProduct.Category.CategoryName; }
        }
        public string? SupplierName
        {
            get { return _myProduct.Supplier.ContactName; }
        }

        public string Country
        {
            get; set;
        }
        public int? Nb
        {
            get; set;
          
        }

    }
}
