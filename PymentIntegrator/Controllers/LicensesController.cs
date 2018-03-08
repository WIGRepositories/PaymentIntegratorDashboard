using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.SqlClient;
using System.Web.Http.Tracing;
using PymentIntegrator.Models;

namespace PymentIntegrator.Controllers
{
    public class LicensesController : ApiController
    {
        [HttpGet]
        [Route("api/Licenses/getLicenseDetails")]
        public DataTable getLicenseDetails(int catId)
        {
            DataTable Tbl = new DataTable();

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "getLicenseDetails credentials....");
            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetLicenseDetails";
            cmd.Connection = conn;

            SqlParameter Gid = new SqlParameter();
            Gid.ParameterName = "@ltypeId";
            Gid.SqlDbType = SqlDbType.Int;
            Gid.Value = catId;
            cmd.Parameters.Add(Gid);


            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(Tbl);
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "getLicenseDetails Credentials completed.");

            // int found = 0;
            return Tbl;
        }

        [HttpPost]
        [Route("api/Licenses/SaveLicenseDetails")]
        public HttpResponseMessage SaveLicenseDetails(LicenseDetails b)
        {

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicenseDetails credentials....");
            SqlConnection conn = new SqlConnection();
            try
            {
                //connect to database

                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelLicenseDetails";
                cmd.Connection = conn;
                conn.Open();
                SqlParameter Aid = new SqlParameter();
                Aid.ParameterName = "@Id";
                Aid.SqlDbType = SqlDbType.Int;
                Aid.Value = Convert.ToString(b.Id);
                cmd.Parameters.Add(Aid);

                SqlParameter lid = new SqlParameter();
                lid.ParameterName = "@LicenseTypeId";
                lid.SqlDbType = SqlDbType.Int;
                lid.Value = Convert.ToString(b.LicenseTypeId);
                cmd.Parameters.Add(lid);

                SqlParameter nn = new SqlParameter();
                nn.ParameterName = "@FeatureTypeId";
                nn.SqlDbType = SqlDbType.Int;
                nn.Value = b.FeatureTypeId;
                cmd.Parameters.Add(nn);

                SqlParameter nm = new SqlParameter();
                nm.ParameterName = "@FeatureLabel";
                nm.SqlDbType = SqlDbType.VarChar;
                nm.Value = b.FeatureLabel;
                cmd.Parameters.Add(nm);

                SqlParameter mn = new SqlParameter();
                mn.ParameterName = "@FeatureValue";
                mn.SqlDbType = SqlDbType.VarChar;
                mn.Value = b.FeatureValue;
                cmd.Parameters.Add(mn);

                SqlParameter ln = new SqlParameter();
                ln.ParameterName = "@LabelClass";
                ln.SqlDbType = SqlDbType.VarChar;
                ln.Value = b.LabelClass;
                cmd.Parameters.Add(ln);

                SqlParameter gsac = new SqlParameter("@fromDate", SqlDbType.DateTime);
                gsac.Value = b.fromDate;
                cmd.Parameters.Add(gsac);


                SqlParameter gsacd = new SqlParameter("@toDate", SqlDbType.DateTime);
                gsacd.Value = b.toDate;
                cmd.Parameters.Add(gsacd);


                SqlParameter flag = new SqlParameter("@insupddelflag", SqlDbType.Char);
                flag.Value = b.insupddelflag;
                cmd.Parameters.Add(flag);


                SqlDataAdapter db = new SqlDataAdapter(cmd);

                cmd.ExecuteScalar();
                conn.Close();
                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicenseDetails Credentials completed.");
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;
                traceWriter.Trace(Request, "1", TraceLevel.Info, "{0}", "Error in SaveLicenseDetails:" + ex.Message);
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }
        }

        [HttpGet]
        [Route("api/Licenses/GetLicenseTypes")]
        public DataTable GetLicenseTypes(int catid)
        {
            DataTable Tbl = new DataTable();
            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicenseTypes credentials....");
            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetLicenseTypes";
            cmd.Connection = conn;

            SqlParameter Gid = new SqlParameter();
            Gid.ParameterName = "@licenseCategoryId";
            Gid.SqlDbType = SqlDbType.Int;
            Gid.Value = catid;
            cmd.Parameters.Add(Gid);

            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(Tbl);
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicenseTypes Credentials completed.");
            // int found = 0;
            return Tbl;
        }
        [HttpPost]
        [Route("api/Licenses/SaveLicenseType")]
        public HttpResponseMessage SaveLicenseTypes(LicenseTypes b)
        {

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicenseTypes credentials....");
            SqlConnection conn = new SqlConnection();
            try
            {
                //connect to database

                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdLicenseTypes";
                cmd.Connection = conn;
                conn.Open();
                SqlParameter Aid = new SqlParameter();
                Aid.ParameterName = "@Id";
                Aid.SqlDbType = SqlDbType.Int;
                Aid.Value = Convert.ToString(b.Id);
                cmd.Parameters.Add(Aid);

                SqlParameter lid = new SqlParameter();
                lid.ParameterName = "@LicenseCatId";
                lid.SqlDbType = SqlDbType.Int;
                lid.Value = Convert.ToString(b.LicenseCategoryId);
                cmd.Parameters.Add(lid);

                SqlParameter ss = new SqlParameter();
                ss.ParameterName = "@LicenseType";
                ss.SqlDbType = SqlDbType.VarChar;
                ss.Value = b.LicenseType;
                cmd.Parameters.Add(ss);

                SqlParameter ii = new SqlParameter();
                ii.ParameterName = "@Description";
                ii.SqlDbType = SqlDbType.VarChar;
                ii.Value = b.Desc;

                cmd.Parameters.Add(ii);
                SqlParameter ll = new SqlParameter();
                ll.ParameterName = "@Active";
                ll.SqlDbType = SqlDbType.VarChar;
                ll.Value = b.Active;

                cmd.ExecuteScalar();

                conn.Close();
                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicenseTypes Credentials completed.");
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;
                traceWriter.Trace(Request, "1", TraceLevel.Info, "{0}", "Error in SaveLicenseTypes:" + ex.Message);
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }
        }


        [HttpPost]
        [Route("api/Licenses/SaveLicenseConfigDetails")]
        public HttpResponseMessage SaveLicenseConfigDetails(LicenseTypes b)
        {

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicenseConfigDetails....");
            SqlConnection conn = new SqlConnection();
            try
            {
                //connect to database

                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdLicenseConfigDetails";
                cmd.Connection = conn;
                conn.Open();
                SqlParameter Aid = new SqlParameter();
                Aid.ParameterName = "@Id";
                Aid.SqlDbType = SqlDbType.Int;
                Aid.Value = Convert.ToString(b.Id);
                cmd.Parameters.Add(Aid);

                SqlParameter lid = new SqlParameter();
                lid.ParameterName = "@LicenseCatId";
                lid.SqlDbType = SqlDbType.Int;
                lid.Value = Convert.ToString(b.LicenseCategoryId);
                cmd.Parameters.Add(lid);

                SqlParameter ss = new SqlParameter();
                ss.ParameterName = "@LicenseType";
                ss.SqlDbType = SqlDbType.VarChar;
                ss.Value = b.LicenseType;
                cmd.Parameters.Add(ss);

                SqlParameter ii = new SqlParameter();
                ii.ParameterName = "@Description";
                ii.SqlDbType = SqlDbType.VarChar;
                ii.Value = b.Desc;

                cmd.Parameters.Add(ii);
                SqlParameter ll = new SqlParameter();
                ll.ParameterName = "@Active";
                ll.SqlDbType = SqlDbType.VarChar;
                ll.Value = b.Active;

                cmd.ExecuteScalar();

                conn.Close();
                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicenseConfigDetails completed.");
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;
                traceWriter.Trace(Request, "1", TraceLevel.Info, "{0}", "Error in SaveLicenseTypes:" + ex.Message);
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }
        }

        [HttpGet]
        [Route("api/Licenses/GetLicenseConfigDetails")]
        public DataTable GetLicenseConfigDetails(int licTypeId)
        {
            DataTable Tbl = new DataTable();

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicenseConfigDetails ....");
            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetLicenseConfigDetails";
            cmd.Connection = conn;

            SqlParameter Gid = new SqlParameter();
            Gid.ParameterName = "@ltypeId";
            Gid.SqlDbType = SqlDbType.Int;
            Gid.Value = licTypeId;
            cmd.Parameters.Add(Gid);


            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(Tbl);
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicenseConfigDetails completed.");

            // int found = 0;
            return Tbl;
        }

        [HttpGet]
        [Route("api/Licenses/GetLicenceCatergories")]
        public DataSet GetLicenceCatergories()
        {
            DataSet Tbl = new DataSet();

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicenceCatergories ....");
            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetLicenceCatergories";
            cmd.Connection = conn;

            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(Tbl);
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicenceCatergories completed.");

            // int found = 0;
            return Tbl;
        }

        [HttpGet]
        [Route("api/GetLicensePayments")]
        public DataTable LicensePayment1()
        {
            DataTable Tbl = new DataTable();
            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicensePayments credentials....");

            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "getLicensePayments";
            cmd.Connection = conn;
            DataSet ds = new DataSet();
            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(ds);
            Tbl = ds.Tables[0];
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicensePayments Credentials completed.");
            // int found = 0;
            return Tbl;
        }

        [HttpPost]

        public HttpResponseMessage LicensePayment2(LicensePayments n)
        {

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicensePayments credentials....");
            SqlConnection conn = new SqlConnection();
            try
            {
                //connect to database

                // connetionString = "Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password";
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelLicensePayments";
                cmd.Connection = conn;

                conn.Open();
                SqlParameter gs = new SqlParameter();
                gs.ParameterName = "@expiryOn";
                gs.SqlDbType = SqlDbType.DateTime;
                gs.Value = Convert.ToString(n.expiryOn);
                cmd.Parameters.Add(gs);

                SqlParameter gsa = new SqlParameter();
                gsa.ParameterName = "@Id";
                gsa.SqlDbType = SqlDbType.Int;
                gsa.Value = Convert.ToString(n.Id);
                cmd.Parameters.Add(gsa);

                SqlParameter gid = new SqlParameter();
                gid.ParameterName = "@licenseFor";
                gid.SqlDbType = SqlDbType.VarChar;
                gid.Value = n.licenseFor;
                cmd.Parameters.Add(gid);

                SqlParameter gsab = new SqlParameter();
                gsab.ParameterName = "@licenseId";
                gsab.SqlDbType = SqlDbType.Int;
                gsab.Value = Convert.ToString(n.licenseId);
                cmd.Parameters.Add(gsab);

                SqlParameter gidb = new SqlParameter();
                gidb.ParameterName = "@licenseType";
                gidb.SqlDbType = SqlDbType.VarChar;
                gidb.Value = n.licenseType;
                cmd.Parameters.Add(gidb);

                SqlParameter guid = new SqlParameter();
                guid.ParameterName = "@paidon";
                guid.SqlDbType = SqlDbType.DateTime;
                guid.Value = Convert.ToString(n.paidon);
                cmd.Parameters.Add(guid);

                SqlParameter guida = new SqlParameter();
                guida.ParameterName = "@renewedon";
                guida.SqlDbType = SqlDbType.DateTime;
                guida.Value = Convert.ToString(n.renewedon);
                cmd.Parameters.Add(guida);

                SqlParameter gidbc = new SqlParameter();
                gidbc.ParameterName = "@transId";
                gidbc.SqlDbType = SqlDbType.VarChar;
                gidbc.Value = n.transId;
                cmd.Parameters.Add(gidbc);




                //SqlParameter ga = new SqlParameter();
                //ga.ParameterName = "@Active";
                //ga.SqlDbType = SqlDbType.Int;
                //ga.Value = Convert.ToString(n.Active);
                //cmd.Parameters.Add(ga);

                cmd.ExecuteScalar();
                conn.Close();
                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicensePayments Credentials completed.");
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;
                traceWriter.Trace(Request, "1", TraceLevel.Info, "{0}", "Error in SaveLicensePayments:" + ex.Message);
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }
        }

        public void Options()
        {
        }

       


        [HttpGet]
        [Route("api/Licenses/LicensePricing")]
        public DataTable LicensePricing(int categoryid)
        {
            DataTable Tbl = new DataTable();
            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicensePricing credentials....");
            //connect to database
            SqlConnection conn = new SqlConnection();
            //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
            conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "GetLicensePricing";
            cmd.Connection = conn;

            SqlParameter lid = new SqlParameter();
            lid.ParameterName = "@categoryid";
            lid.SqlDbType = SqlDbType.Int;
            lid.Value = categoryid;
            cmd.Parameters.Add(lid);

            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(Tbl);
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "GetLicensePricing Credentials completed.");
            // int found = 0;
            return Tbl;
        }


        [HttpPost]
        [Route("api/Licenses/SaveLicensePricing")]
        public HttpResponseMessage SaveLicensePricing(LicensePricing b)
        {

            LogTraceWriter traceWriter = new LogTraceWriter();
            traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicensePricing credentials....");
            SqlConnection conn = new SqlConnection();
            try
            {

                //connect to database

                //connetionString="Data Source=ServerName;Initial Catalog=DatabaseName;User ID=UserName;Password=Password"
                conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelLicensePricing";
                cmd.Connection = conn;
                conn.Open();
                SqlParameter Aid = new SqlParameter();
                Aid.ParameterName = "@Id";
                Aid.SqlDbType = SqlDbType.Int;
                Aid.Value = Convert.ToString(b.Id);
                cmd.Parameters.Add(Aid);

                SqlParameter lid = new SqlParameter();
                lid.ParameterName = "@LicenseId";
                lid.SqlDbType = SqlDbType.Int;
                lid.Value = Convert.ToString(b.LicenseId);
                cmd.Parameters.Add(lid);

                SqlParameter ss = new SqlParameter();
                ss.ParameterName = "@RenewalFreqTypeId";
                ss.SqlDbType = SqlDbType.Int;
                ss.Value = b.RenewalFreqTypeId;
                cmd.Parameters.Add(ss);

                SqlParameter pid = new SqlParameter();
                pid.ParameterName = "@RenewalFreq";
                pid.SqlDbType = SqlDbType.Int;
                pid.Value = b.RenewalFreq;
                cmd.Parameters.Add(pid);

                SqlParameter sid = new SqlParameter();
                sid.ParameterName = "@UnitPrice";
                sid.SqlDbType = SqlDbType.Decimal;
                sid.Value = b.UnitPrice;
                cmd.Parameters.Add(sid);

                SqlParameter gid = new SqlParameter();
                gid.ParameterName = "@todate";
                gid.SqlDbType = SqlDbType.DateTime;
                gid.Value = b.todate;
                cmd.Parameters.Add(gid);

                SqlParameter fid = new SqlParameter();
                fid.ParameterName = "@fromdate";
                fid.SqlDbType = SqlDbType.DateTime;
                fid.Value = b.fromdate;
                cmd.Parameters.Add(fid);


                SqlParameter nActive = new SqlParameter("@insupddelflag", SqlDbType.Char);
                nActive.Value = b.insupddelflag;
                cmd.Parameters.Add(nActive);

                cmd.ExecuteScalar();
                conn.Close();

                traceWriter.Trace(Request, "0", TraceLevel.Info, "{0}", "SaveLicensePricing Credentials completed.");
                //int found = 0;
                return new HttpResponseMessage(HttpStatusCode.OK);
            }
            catch (Exception ex)
            {
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
                string str = ex.Message;
                traceWriter.Trace(Request, "1", TraceLevel.Info, "{0}", "Error in SaveLicensePricing:" + ex.Message);
                return Request.CreateErrorResponse(HttpStatusCode.NotFound, ex);
            }
        }

        //public void Options() { }


       
    }
}
