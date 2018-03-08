using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PymentIntegrator.Controllers
{
    public class RegistrationsController : ApiController
    {
        [HttpGet]
        [Route("api/Registration/GetRegistrations")]
        public DataTable GetRegistrations()
        {

            DataTable tbl = new DataTable();

            string constr = ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = constr;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "GetRegistrations";
            cmd.Connection = con;

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(tbl);
            return tbl;
        }

    }
}
