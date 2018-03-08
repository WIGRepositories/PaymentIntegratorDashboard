using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using PymentIntegrator.Models;
using System.Web.Http.Tracing;


namespace PymentIntegrator.Controllers
{
    public class UsersController : ApiController
    {
        [HttpGet]
        [Route("api/Users/getUsers")]
        public DataTable getUsers()
        {

            DataTable tbl = new DataTable();

            string constr = ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = constr;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "GetUsers";
            cmd.Connection = con;

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(tbl);
            return tbl;

        }


        [HttpPost]
        [Route("api/Users/UsersDetails")]
        public int UsersDetails(Users us)
        {
            SqlConnection conn = new SqlConnection();

            try
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PayInt"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelUsers";

                SqlParameter id = new SqlParameter("Id", SqlDbType.Int);
                id.Value = us.Id;
                cmd.Parameters.Add(id);

                SqlParameter cn = new SqlParameter("FirstName", SqlDbType.VarChar, 50);
                cn.Value = us.FirstName;
                cmd.Parameters.Add(cn);

                SqlParameter cr = new SqlParameter("LastName", SqlDbType.VarChar, 50);
                cr.Value = us.LastName;
                cmd.Parameters.Add(cr);

                SqlParameter at = new SqlParameter("MiddleName", SqlDbType.VarChar, 50);
                at.Value = us.MiddleName;
                cmd.Parameters.Add(at);

                SqlParameter ad = new SqlParameter("EmpNo", SqlDbType.VarChar, 50);
                ad.Value = us.EmpNo;
                cmd.Parameters.Add(ad);

                SqlParameter cg = new SqlParameter("EmailId", SqlDbType.VarChar, 50);
                cg.Value = us.EmailId;
                cmd.Parameters.Add(cg);

                SqlParameter ct = new SqlParameter("ContactNo2", SqlDbType.VarChar, 50);
                ct.Value = us.ContactNo2;
                cmd.Parameters.Add(ct);

                SqlParameter fx = new SqlParameter("RoleId", SqlDbType.VarChar, 50);
                fx.Value = us.RoleId;
                cmd.Parameters.Add(fx);


                SqlParameter dd = new SqlParameter("CountryId", SqlDbType.VarChar, 50);
                dd.Value = us.CountryId;
                cmd.Parameters.Add(dd);

                SqlParameter ed = new SqlParameter("CompanyId", SqlDbType.VarChar, 50);
                ed.Value = us.CompanyId;
                cmd.Parameters.Add(ed);

                SqlParameter tt = new SqlParameter("Active", SqlDbType.VarChar, 50);
                tt.Value = us.Active;
                cmd.Parameters.Add(tt);

                SqlParameter cp = new SqlParameter("GenderId", SqlDbType.VarChar);
                cp.Value = us.GenderId;
                cmd.Parameters.Add(cp);

                SqlParameter cy = new SqlParameter("ManagerId", SqlDbType.VarChar);
                cy.Value = us.ManagerId;
                cmd.Parameters.Add(cy);


                SqlParameter zc = new SqlParameter("StateId", SqlDbType.VarChar);
                zc.Value = us.StateId;
                cmd.Parameters.Add(zc);


                SqlParameter st = new SqlParameter("ZipCode", SqlDbType.VarChar);
                st.Value = us.ZipCode;
                cmd.Parameters.Add(st);


                SqlParameter ss = new SqlParameter("ContactNo1", SqlDbType.VarChar);
                ss.Value = us.ContactNo1;
                cmd.Parameters.Add(ss);


                SqlParameter fs = new SqlParameter("Address", SqlDbType.VarChar);
                fs.Value = us.Address;
                cmd.Parameters.Add(fs);

                SqlParameter sa = new SqlParameter("AltAddress", SqlDbType.VarChar);
                sa.Value = us.AltAddress;
                cmd.Parameters.Add(sa);

                SqlParameter lo = new SqlParameter("photo", SqlDbType.VarChar);
                lo.Value = us.photo;
                cmd.Parameters.Add(lo);

                SqlParameter fl = new SqlParameter("flag", SqlDbType.VarChar);
                fl.Value = us.flag;
                cmd.Parameters.Add(fl);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

            }
            catch (Exception ex)
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                throw ex;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }

            return 7;

        }

         [HttpGet]
         [Route("api/Users/GetUserRoles")]
        public DataTable GetUserRoles()
        {
            DataTable Tbl = new DataTable();

            //LogTraceWriter traceWriter = new LogTraceWriter();
           // traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetUserRoles credentials....");
            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetUserRoles";
            cmd.Connection = conn;
            DataSet ds = new DataSet();
            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(ds);
            Tbl = ds.Tables[0];
            //traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetUserRoles Credentials completed.");
            // int found = 0;
            return Tbl;
        }


         [HttpPost]
         [Route("api/Users/UserRolesDetails")]
         public HttpResponseMessage UserRolesDetails(UserRoles b)
         {

             //LogTraceWriter traceWriter = new LogTraceWriter();
            // traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveUserRoles credentials....");
             //connect to database
             SqlConnection conn = new SqlConnection();
             try
             {
                 //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                 conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

                 SqlCommand cmd = new SqlCommand();
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.CommandText = "InsUpdDelUserRoles";
                 cmd.Connection = conn;
                 conn.Open();
                 SqlParameter Aid = new SqlParameter();
                 Aid.ParameterName = "@Id";
                 Aid.SqlDbType = SqlDbType.Int;
                 Aid.Value = Convert.ToString(b.Id);
                 cmd.Parameters.Add(Aid);
                 SqlParameter iid = new SqlParameter();
                 iid.ParameterName = "@UserId";
                 iid.SqlDbType = SqlDbType.Int;
                 iid.Value = Convert.ToString(b.UserId);
                 cmd.Parameters.Add(iid);
                 SqlParameter ii = new SqlParameter();
                 ii.ParameterName = "@CompanyId";
                 ii.SqlDbType = SqlDbType.Int;
                 ii.Value = Convert.ToString(b.CompanyId);
                 cmd.Parameters.Add(ii);
                 SqlParameter rr = new SqlParameter();
                 rr.ParameterName = "@RoleId";
                 rr.SqlDbType = SqlDbType.Int;
                 rr.Value = Convert.ToString(b.RoleId);
                 cmd.Parameters.Add(rr);
                 SqlParameter fl = new SqlParameter("flag",SqlDbType.VarChar);
                 fl.Value = b.flag;
                 cmd.Parameters.Add(fl);


                 //DataSet ds = new DataSet();
                 //SqlDataAdapter db = new SqlDataAdapter(cmd);
                 //db.Fill(ds);
                 // Tbl = Tables[0];
                 cmd.ExecuteScalar();
                 conn.Close();

                // traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveUserRoles Credentials completed.");
                 return new HttpResponseMessage(HttpStatusCode.OK);
             }
             catch (Exception ex)
             {
                 if (conn != null && conn.State == ConnectionState.Open)
                 {
                     conn.Close();
                 }
                 string str = ex.Message;
               //  traceWriter.Trace(Request, "1", TraceLevel.Info, "{0}", "Error in SaveUserRoles:" + ex.Message);
                 return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
             }
         }
       
    }
}
