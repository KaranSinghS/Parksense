using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
using System.Configuration;
/// <summary>
/// Summary description for BTable
/// </summary>
public class BTable:SQLDBTable 
{
    public BTable() : base("BTable", ConfigurationManager.ConnectionStrings["NTDBConnectionString"].ToString())
    {
        //
        // TODO: Add constructor logic here
        //
    }
}