using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Mozzie.Models;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace Mozzie.Data
{
    /// <summary>
    /// 分类目录管理
    /// </summary>
    public class Categories
    {
        public int Create(Category cate)
        {
            string sql = "insert into moz_category (name, slug, parentID, [desc], status) values (@name,@slug,@pid,@desc,1)";
            Database db = Broker.Mozzie;
            using (DbCommand dbCmd = db.GetSqlStringCommand(sql))
            {
                db.AddInParameter(dbCmd, "@name", System.Data.DbType.String, cate.Name);
                db.AddInParameter(dbCmd, "@slug", System.Data.DbType.String, cate.Slug);
                db.AddInParameter(dbCmd, "@pid", System.Data.DbType.Int32, cate.ParentID);
                db.AddInParameter(dbCmd, "@desc", System.Data.DbType.String, cate.Desc);
                return db.ExecuteNonQuery(dbCmd);
            }
        }

        public List<Category> List()
        {
            List<Category> list = new List<Category>();
            string sql = "select id,name, slug, parentID, [desc] from moz_category where status=1";
            Database db = Broker.Mozzie;
            using (DbCommand dbCmd = db.GetSqlStringCommand(sql))
            {
                using (IDataReader dr = db.ExecuteReader(dbCmd))
                {
                    while (dr.Read())
                    {
                        Category ca = new Category();
                        ca.ID = dr.GetInt32(0);
                        ca.Name = dr.GetString(1);
                        ca.Slug = dr.GetString(2);
                        ca.ParentID = dr.GetInt32(3);
                        if (!dr.IsDBNull(4))
                        {
                            ca.Desc = dr.GetString(4);
                        }
                        
                        list.Add(ca);
                    }
                    return list;
                }
            }
            return list;
        }
    }
}
