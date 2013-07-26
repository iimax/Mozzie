using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Mozzie.Models
{
    public class Page
    {
        public int ID { get; set; }
        public string Url { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string Template { get; set; }
        public int ParentID { get; set; }
    }
}
