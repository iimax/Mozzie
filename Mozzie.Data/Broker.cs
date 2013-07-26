using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace Mozzie.Data
{
    public class Broker
    {
        public Broker()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        private static Database _mozz;

        public static Database Mozzie
        {
            get
            {
                if (_mozz == null)
                {
                    _mozz = DatabaseFactory.CreateDatabase();
                }
                return _mozz;
            }
        }
    }
}
