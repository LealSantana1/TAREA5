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

        // Cargar la lista de �rdenes desde el controlador
        private async void LoadOrdenes()
        {
            // Obtenemos todas las �rdenes del controlador
            OrdenesListView.ItemsSource = await _controller.GetAllOrdenes();
        }

        // Navegar a la p�gina de edici�n de orden al hacer clic sobre una orden en la lista
        private async void OnOrderTapped(object sender, ItemTappedEventArgs e)
        {
            // Obtener la orden seleccionada
            var orden = (Orden)e.Item;
            // Navegar a la p�gina de edici�n de orden con la orden seleccionada
            await Navigation.PushAsync(new OrdenEditPage(orden));

            // Deseleccionar el elemento despu�s de tocarlo
            OrdenesListView.SelectedItem = null;
        }

        // Navegar a la p�gina de creaci�n de una nueva orden
        private async void OnAddOrderClicked(object sender, EventArgs e)
        {
            // Navegar a la p�gina de edici�n sin pasar una orden (para crear una nueva)
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