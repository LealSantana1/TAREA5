using MiAppCrud.Controllers;



using MiAppCrud.Services;

using SQLite;


using MiAppCrud.Views;

namespace MiAppCrud
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            MainPage = new AppShell();
        }
    }
}
