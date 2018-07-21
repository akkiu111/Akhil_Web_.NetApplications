using System.ComponentModel.DataAnnotations;

namespace imcsefcodefirst
{
    public class AkhilGeneralInfo
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public AddressInfo AddressInfos { get; set; }

    }
}