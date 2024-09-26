using MiAppCrud.Controllers;
using MiAppCrud.Models;
using System.Collections.ObjectModel;

namespace MiAppCrud.Views
{
    public partial class OrdenEditPage : ContentPage
    {
        private Orden _orden;

        public OrdenEditPage(Orden orden = null)
        {
            InitializeComponent();
            _orden = orden ?? new Orden(); // Si no se pasa orden, creamos una nueva

            // Si la orden ya existe (Id != 0), cargamos los datos en la vista
            if (_orden.Id != 0)
            {
                NombreEntry.Text = _orden.Nombre;
                FechaPicker.Date = _orden.Fecha; // Cargar la fecha en el DatePicker
            }

            LoadProductos(); // Cargar los productos disponibles
        }

        private void LoadProductos()
        {
            // Ejemplo de productos disponibles
            var productos = new List<Producto>
            {
                new Producto { Id = 1, Nombre = "Laptop HP" },
                new Producto { Id = 2, Nombre = "Mouse Logitech" },
                new Producto { Id = 3, Nombre = "Monitor Asus" },
                new Producto { Id = 4, Nombre = "Teclado RedDragon" },
            };

            ProductoPicker.ItemsSource = productos;
            ProductoPicker.ItemDisplayBinding = new Binding("Nombre");

            // Si la orden ya tiene un producto seleccionado, lo mostramos en el Picker
            if (_orden.ProductoId != 0)
            {
                var selectedProducto = productos.FirstOrDefault(p => p.Id == _orden.ProductoId);
                ProductoPicker.SelectedItem = selectedProducto;
            }
        }

        private async void OnSaveClicked(object sender, EventArgs e)
        {
            // Guardar la información de la orden
            _orden.Nombre = NombreEntry.Text;
            _orden.ProductoId = ((Producto)ProductoPicker.SelectedItem)?.Id ?? 0;
            _orden.Fecha = FechaPicker.Date; // Obtener la fecha del DatePicker

            var controller = new OrdenController();

            // Si la orden es nueva (Id == 0), se agrega; si no, se actualiza
            if (_orden.Id == 0)
                await controller.AddOrden(_orden);
            else
                await controller.UpdateOrden(_orden);

            // Volver a la página anterior después de guardar
            await Navigation.PopAsync();
        }
    }
}
/*
namespace MiAppCrud.Views
{
    public partial class OrdenEditPage : ContentPage
    {
        private Orden _orden;

        public OrdenEditPage(Orden orden = null)
        {
            InitializeComponent();
            _orden = orden ?? new Orden(); // Si no se pasa orden, creamos una nueva

            // Si la orden ya existe (Id != 0), cargamos los datos en la vista
            if (_orden.Id != 0)
            {
                NombreEntry.Text = _orden.Nombre;
                FechaPicker.Date = _orden.Fecha; // Cargar la fecha en el DatePicker
            }

            LoadProductos(); // Cargar los productos disponibles
        }

        private void LoadProductos()
        {
            // Ejemplo de productos disponibles
            var productos = new List<Producto>
            {
                new Producto { Id = 1, Nombre = "Laptop HP" },
                new Producto { Id = 2, Nombre = "Mouse Logitech" },
                new Producto { Id = 3, Nombre = "Monitor Asus" },
                new Producto { Id = 4, Nombre = "Teclado RedDragon" },
            };

            ProductoPicker.ItemsSource = productos;
            ProductoPicker.ItemDisplayBinding = new Binding("Nombre");

            // Si la orden ya tiene un producto seleccionado, lo mostramos en el Picker
            if (_orden.ProductoId != 0)
            {
                var selectedProducto = productos.FirstOrDefault(p => p.Id == _orden.ProductoId);
                ProductoPicker.SelectedItem = selectedProducto;
            }
        }

        private async void OnSaveClicked(object sender, EventArgs e)
        {
            // Guardar la información de la orden
            _orden.Nombre = NombreEntry.Text;
            _orden.ProductoId = ((Producto)ProductoPicker.SelectedItem)?.Id ?? 0;
            _orden.Fecha = FechaPicker.Date; // Obtener la fecha del DatePicker

            var controller = new OrdenController();

            // Si la orden es nueva (Id == 0), se agrega; si no, se actualiza
            if (_orden.Id == 0)
                await controller.AddOrden(_orden);
            else
                await controller.UpdateOrden(_orden);

            // Volver a la página anterior después de guardar
            await Navigation.PopAsync();
        }
    }
}

/*  public partial class OrdenListPage : ContentPage
  {
      public OrdenListPage()
      {
          InitializeComponent();

          Ordenes = new ObservableCollection<Orden>
          {
              new Orden { Fecha = DateTime.Now.AddDays(-1).ToString("dd/MM/yyyy") },
              new Orden { Fecha = DateTime.Now.ToString("dd/MM/yyyy") }
          };

          OrdenesListView.ItemsSource = Ordenes;
      }

      private void OnAddOrderClicked(object sender, EventArgs e)
      {
          Ordenes.Add(new Orden { Fecha = DateTime.Now.ToString("dd/MM/yyyy") });
      }

      private void OnOrderTapped(object sender, ItemTappedEventArgs e)
      {
          if (e.Item == null)
              return;

          var ordenSeleccionada = e.Item as Orden;
          DisplayAlert("Orden seleccionada", $"Fecha: {ordenSeleccionada.Fecha}", "OK");

          ((ListView)sender).SelectedItem = null;
      }
  }
}
*/