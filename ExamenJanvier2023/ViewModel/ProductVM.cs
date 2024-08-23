using ExamenJanvier2023.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApplication1.ViewModels;

namespace ExamenJanvier2023.ViewModel
{
    public class ProductVM
    {
        private NorthwindContext _dc = new NorthwindContext();
        private ObservableCollection<ProductModel> _productList;
        private ObservableCollection<CountrySalesModel> _countrySalesList;
        private ProductModel _selectedProduct;
        private DelegateCommand _updateCommand;

        public ObservableCollection<ProductModel> ProductList
        {
            get
            {
               return _productList= _productList ?? LoadProduct();

            }

        }

        private ObservableCollection<ProductModel> LoadProduct()
        {
            ObservableCollection<ProductModel> localCollection = new ObservableCollection<ProductModel>();
            foreach (var item in _dc.Products)
            {
                if (!item.Discontinued)
                {
                    localCollection.Add(new ProductModel(item));
                }
                

            }
            return localCollection;
        }

        public ObservableCollection<CountrySalesModel> CountrySalesList
        {
            get
            {
                return _countrySalesList = _countrySalesList ?? LoadCountrySales();
            }
        }

        private ObservableCollection<CountrySalesModel> LoadCountrySales()
        {
            var salesByCountry = _dc.Products
                .Where(p => !p.Discontinued && p.OrderDetails.Any()) // Only count products that were sold at least once
                .GroupBy(p => p.Supplier.Country)
                .Select(g => new CountrySalesModel
                {
                    Country = g.Key,
                    Nb = g.Count()
                })
                .OrderByDescending(c => c.Nb)
                .ToList();

            return new ObservableCollection<CountrySalesModel>(salesByCountry);
        }

        public ProductModel SelectedProduct
        {
            get { return _selectedProduct; }
            set { _selectedProduct = value; }
        }

        public DelegateCommand UpdateCommand
        {
            get { return _updateCommand = _updateCommand ?? new DelegateCommand(DiscontinuedUpdate); }
        }

        private void DiscontinuedUpdate()
        {
            Product product = _dc.Products.Where(x=>x.ProductId == SelectedProduct.ProductId).FirstOrDefault();
            if (product != null) {
                product.Discontinued = true;
                _dc.Products.Update(product);
                _productList.Remove(SelectedProduct);
                _dc.SaveChanges();
            }
        }
    }
}
