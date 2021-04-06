using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;

namespace WebSecurity.Models
{
    public class ConnectionSQL
    {
        public static string ConnectionString = ConfigurationManager.ConnectionStrings["DBConnectStrings"].ConnectionString;
        SqlConnection aSqlConnection = new SqlConnection(ConnectionString);

        public SqlConnection Connection()
        {
            return aSqlConnection;
        }
        public void Open()
        {
            try
            {
                string aState = aSqlConnection.State.ToString();
                if (aState.Trim().Equals("Closed"))
                {
                    aSqlConnection.Open();
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }
        public void Close()
        {
            try
            {
                string aState = aSqlConnection.State.ToString();
                if (aState.Trim().Equals("Open"))
                {
                    aSqlConnection.Close();
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
        }
    }
}