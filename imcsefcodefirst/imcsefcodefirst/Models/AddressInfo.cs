using System.ComponentModel.DataAnnotations;

namespace imcsefcodefirst
{
    public class AddressInfo
    {
        [Key]
        public string Street { get; set; }
        public int AptNo { get; set; }
        public int Zipcode { get; set; }
        public string State { get; set; }
        public string City { get; set; }
    }
}