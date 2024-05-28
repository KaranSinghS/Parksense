using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Area
/// </summary>
public class Area1
{
    public Area1()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string PlaceName;
    public double KM;
    public static void Sort(Area1[] a)
    {
        Area1 t;
        for(int i=0;i<a.Length;i++)
        {
            for(int j=0;j<a.Length;j++)
            {
                if(a[i].KM<a[j].KM)
                {
                    t = a[i];
                    a[i] = a[j];
                    a[j] = t;
                }
            }
        }
    }
}