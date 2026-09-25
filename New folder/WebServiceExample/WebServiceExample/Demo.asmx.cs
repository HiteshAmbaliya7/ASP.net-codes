using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebServiceExample
{
    /// <summary>
    /// Summary description for Demo
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Demo : System.Web.Services.WebService
    {

        [WebMethod]
        public int addition(int a, int b)
        {
            return a + b;
        }
        [WebMethod]
        public int multiplication(int a, int b)
        {
            return a * b;
        }
        [WebMethod]
        public string getname(string nm)
        {
            return nm;
        }
    }
}
