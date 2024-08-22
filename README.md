https://gitlab.vinci.be/olivier.choquet/net_solutions

https://github.com/nitroc-dev/Vinci-BIN




WPF Application   /  	ASP.NET Core Web API


{
	Outils –> SQL SERVER -> Nouvelle requête/query

	Clic droit sur le projet -> Gérer les packages NuGet
	Microsoft.EntityFrameworkCore
	Microsoft.EntityFrameworkCore.Design
	Microsoft.EntityFrameworkCore.Tools
	Microsoft.EntityFrameworkCore.SqlServer

	Outils – Gestionnaire de Package NuGet -> Console
	Scaffold-DbContext -OutputDir Models 'Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Northwind' Microsoft.EntityFrameworkCore.SqlServer

	NorthwindContext  .UseLazyLoading.UseLazyLoadingProxies();

	MainWindow
	this.DataContext = new schoolVM():
	
}
