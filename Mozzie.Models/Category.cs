using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Mozzie.Models
{
    public class Category
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public string Slug { get; set; }

        //public string ParentName { get; set; }

        public int ParentID { get; set; }

        public string Desc { get; set; }
    }
}
