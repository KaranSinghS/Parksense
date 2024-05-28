using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
using System.Configuration;
/// <summary>
/// Summary description for Users
/// </summary>
public class Users:SQLDBTable 
{
    public Users():base ("UserTable",ConfigurationManager.ConnectionStrings["NTDBConnectionString"].ToString ())
    {
        //
        // TODO: Add constructor logic here
        //
    }
}