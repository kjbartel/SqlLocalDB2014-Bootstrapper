# SqlLocalDB2014-Bootstrapper
ClickOnce and Visual Studio Installer bootstrapper package for Microsoft SQL Server 2014 Express LocalDB.

**To use:**

Copy the whole `SqlLocalDB2014` folder to the bootstrapper `Packages` folder, e.g. `C:\Program Files (x86)\Microsoft Visual Studio 14.0\SDK\Bootstrapper\Packages`. The path to this folder can be found in the registry in the `Path` value from the following registry key (where `14.0` should be replaced with the Visual Studio version you're using):

> HKLM\Software\Microsoft\GenericBootstrapper\14.0

or, for x64 Windows:

> HKLM\Software\Wow6432Node\Microsoft\GenericBootstrapper\14.0

The packge should then be shown in Visual Studio along with other bootstrapper packages. If you want to provide the component together with your application rather than downloading from Microsoft then you'll also need to download the two `sqllocaldb.msi` files specified in the `package.xml` file for the region and save them in the `SqlLocalDB2014` folder, renamed to `sqllocaldb_x86.msi` and `sqllocaldb_x64.msi`.
