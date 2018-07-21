namespace imcsefcodefirst
{
    using System.Data.Entity;

    public class akhilcfmodel : DbContext
    {
        // Your context has been configured to use a 'akhilcfmodel' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'imcsefcodefirst.akhilcfmodel' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'akhilcfmodel' 
        // connection string in the application configuration file.
        public akhilcfmodel()
            : base("name=akhilcfmodel")
        {
        }

        public DbSet<AddressInfo> AddressInfos { get; set; }
        public DbSet<AkhilGeneralInfo> AkhilGeneralInfos { get; set; }

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}