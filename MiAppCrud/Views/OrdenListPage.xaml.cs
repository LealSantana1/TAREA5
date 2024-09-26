using System;
using System.Collections.ObjectModel;
using MiAppCrud.Controllers;
using MiAppCrud.Models;
using Microsoft.Maui.Controls;

namespace MiAppCrud.Views
{
    public partial class OrdenListPage : ContentPage
    {
        private OrdenController _controller;

        public OrdenListPage()
        {
            InitializeComponent();
            _controller = new OrdenController();
            LoadOrdenes();
        }

        // Cargar la lista de órdenes desde el controlador
        private async void LoadOrdenes()
        {
            // Obtenemos todas las órdenes del controlador
            OrdenesListView.ItemsSource = await _controller.GetAllOrdenes();
        }

        // Navegar a la página de edición de orden al hacer clic sobre una orden en la lista
        private async void OnOrderTapped(object sender, ItemTappedEventArgs e)
        {
            // Obtener la orden seleccionada
            var orden = (Orden)e.Item;
            // Navegar a la página de edición de orden con la orden seleccionada
            await Navigation.PushAsync(new OrdenEditPage(orden));

            // Deseleccionar el elemento después de tocarlo
            OrdenesListView.SelectedItem = null;
        }

        // Navegar a la página de creación de una nueva orden
        private async void OnAddOrderClicked(object sender, EventArgs e)
        {
            // Navegar a la página de edición sin pasar una orden (para crear una nueva)
            await Navigation.PushAsync(new OrdenEditPage());
        }
    }
}

/*
namespace MiAppCrud.Views
{
    public partial class OrdenlistPage : ContentPage
    {
        private OrdenController _controller;

        public OrdenListPage()
        {
            InitializeComponent();
            _controller = new OrdenController();
            LoadOrdenes();
        }

        private async void LoadOrdenes()
        {
            OrdenesListView.ItemsSource = await _controller.GetAllOrdenes();
        }

        private async void OnOrderTapped(object sender, ItemTappedEventArgs e)
        {
            var orden = (Orden)e.Item;
            await Navigation.PushAsync(new OrdenEditPage(orden));
        }

        private async void OnAddOrderClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new OrdenEditPage());
        }
    }
}
*/