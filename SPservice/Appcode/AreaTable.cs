using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
using System.Configuration;
/// <summary>
/// Summary description for AreaTable
/// </summary>
public class AreaTable:SQLDBTable
{
    public AreaTable():base ("AreaTable", ConfigurationManager.ConnectionStrings["NTDBConnectionString"].ToString())
    {
        //
        // TODO: Add constructor logic here
        //
    }
}