using System;
using System.Collections.Generic;
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
    }
}