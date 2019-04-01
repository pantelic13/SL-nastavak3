using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace SL
{
    public class Konekcija
    {

        /*static public SqlConnection Connect()
        {
            SqlConnection conn = new SqlConnection(
            WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
            return conn;
        }*/

        
        static string myServer = Environment.MachineName;
        static string CS = ("Data Source = DESKTOP-JCLATHG; Initial Catalog = Online; Integrated Security = True");
        static public SqlConnection Connect()
        {
            SqlConnection conn = new SqlConnection(CS);
            return conn;
        }
        
    }
}