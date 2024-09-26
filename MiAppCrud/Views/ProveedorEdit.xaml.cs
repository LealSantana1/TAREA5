using System;
using MiAppCrud.Models;  // Asegúrate de que el modelo Proveedor esté en este espacio de nombres
using MiAppCrud.Controllers;  // Asegúrate de que el controlador ProveedorController esté en este espacio de nombres

namespace MiAppCrud.Views
{
    public partial class ProveedorEditPage : ContentPage
    {
        public ProveedorEditPage(Proveedor proveedor = null)
        {
            InitializeComponent();

            // Si se pasa un proveedor, lo vinculamos al BindingContext para editarlo
            if (proveedor == null)
            {
                BindingContext = new Proveedor();  // Para un nuevo proveedor
            }
            else
            {
                BindingContext = proveedor;  // Para editar un proveedor existente
            }
        }

        private async void OnSaveClicked(object sender, EventArgs e)
        {
            var proveedor = (Proveedor)BindingContext;  // Obtenemos el proveedor del BindingContext

            // Instanciamos el controlador y llamamos al método AddOrUpdateProveedor
            ProveedorController proveedorController = new ProveedorController();
            proveedorController.AddOrUpdateProveedor(proveedor);

            // Mostramos un mensaje de confirmación
            await DisplayAlert("Éxito", "Proveedor guardado exitosamente", "OK");

            // Volvemos a la página anterior
            await Navigation.PopAsync();
        }
    }
}
