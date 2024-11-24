using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{
    public class CardsModel
    {
        public List<cardtable> cardtables { get; set; }
        public List<cardtable_cups> cardtables_cups { get; set; }
        public List<cardtable_swords> cardtables_swords { get; set; }
        public List<cardtable_pentacles> cardtables_pentacles { get; set; }
        public List<cardtable_wands> cardtables_wands { get; set; }
        public List<cardtable_use> cardtables_uses { get; set; }
    }

    public class Menu
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Link { get; set; }
        public string Meta { get; set; }
        public int Order { get; set; }
        public bool Hide { get; set; }
        public DateTime Date { get; set; }
    }
}