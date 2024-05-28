using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
using System.Configuration;
/// <summary>
/// Summary description for PZoneTable
/// </summary>
public class PZoneTable:SQLDBTable 
{
    public PZoneTable() : base("PZoneTable", ConfigurationManager.ConnectionStrings["NTDBConnectionString"].ToString())
    {
        //
        // TODO: Add constructor logic here
        //
    }
}