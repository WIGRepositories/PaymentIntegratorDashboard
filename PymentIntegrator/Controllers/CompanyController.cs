using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.SqlClient;
using PymentIntegrator.Models;
using System.Configuration;

namespace PymentIntegrator.Controllers
{
    public class CompanyController : ApiController
    {
        [HttpGet]
        [Route("api/Company/getCompany")]
        public DataTable getCompany()
        {

            DataTable tbl = new DataTable();

            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = constr;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "GetCompany";
            cmd.Connection = con;

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(tbl);
            return tbl;

        }
    
        
        [HttpPost]
        [Route("api/Company/CompanyDetails")]       
        public int CompanyDetails(company us)
        {
            SqlConnection conn = new SqlConnection();

            try
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PayInt"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelCompany";

                SqlParameter id = new SqlParameter("Id", SqlDbType.Int);
                id.Value = us.Id;
                cmd.Parameters.Add(id);

                SqlParameter cn = new SqlParameter("Name", SqlDbType.VarChar, 50);
                cn.Value = us.Name;
                cmd.Parameters.Add(cn);

                SqlParameter cr = new SqlParameter("Desc", SqlDbType.VarChar, 50);
                cr.Value = us.Desc;
                cmd.Parameters.Add(cr);

                SqlParameter at = new SqlParameter("Active", SqlDbType.VarChar, 50);
                at.Value = us.Active;
                cmd.Parameters.Add(at);

                SqlParameter ad = new SqlParameter("Address", SqlDbType.VarChar, 50);
                ad.Value = us.Address;
                cmd.Parameters.Add(ad);

                SqlParameter cg = new SqlParameter("ContactNo1", SqlDbType.VarChar, 50);
                cg.Value = us.ContactNo1;
                cmd.Parameters.Add(cg);

                SqlParameter ct = new SqlParameter("ContactNo2", SqlDbType.VarChar, 50);
                ct.Value = us.ContactNo2;
                cmd.Parameters.Add(ct);

                SqlParameter fx = new SqlParameter("Fax", SqlDbType.VarChar, 50);
                fx.Value = us.Fax;
                cmd.Parameters.Add(fx);

                SqlParameter ed = new SqlParameter("EmailId", SqlDbType.VarChar, 50);
                ed.Value = us.EmailId;
                cmd.Parameters.Add(ed);

                SqlParameter tt = new SqlParameter("Title", SqlDbType.VarChar, 50);
                tt.Value = us.Title;
                cmd.Parameters.Add(tt);

                SqlParameter cp = new SqlParameter("Caption", SqlDbType.VarChar);
                cp.Value = us.Caption;
                cmd.Parameters.Add(cp);

                SqlParameter cy = new SqlParameter("Country", SqlDbType.VarChar);
                cy.Value = us.Country;
                cmd.Parameters.Add(cy);


                SqlParameter zc = new SqlParameter("ZipCode", SqlDbType.VarChar);
                zc.Value = us.ZipCode;
                cmd.Parameters.Add(zc);


                SqlParameter st = new SqlParameter("State", SqlDbType.VarChar);
                st.Value = us.State;
                cmd.Parameters.Add(st);


                SqlParameter ss = new SqlParameter("StaffSize", SqlDbType.VarChar);
                ss.Value = us.StaffSize;
                cmd.Parameters.Add(ss);


                SqlParameter fs = new SqlParameter("FleetSize", SqlDbType.VarChar);
                fs.Value = us.FleetSize;
                cmd.Parameters.Add(fs);

                SqlParameter sa = new SqlParameter("ShippingAddress", SqlDbType.VarChar);
                sa.Value = us.ShippingAddress;
                cmd.Parameters.Add(sa);

                SqlParameter lo = new SqlParameter("Logo", SqlDbType.VarChar);
                lo.Value = us.Logo;
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
        [Route("api/Company/getCustomers")]
        public DataTable GetCustomers()
        {

            DataTable tbl = new DataTable();

            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["PayInt"].ToString();

            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = constr;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "GetCustomers";
            cmd.Connection = con;

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(tbl);
            return tbl;

        }


        [HttpPost]
        [Route("api/Company/CustomerDetails")]
        public int CustomerDetails(Customers us)
        {
            SqlConnection conn = new SqlConnection();

            try
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["PayInt"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "InsUpdDelCustomers";

                SqlParameter id = new SqlParameter("Id", SqlDbType.Int);
                id.Value = us.Id;
                cmd.Parameters.Add(id);

                SqlParameter cn = new SqlParameter("FirstName", SqlDbType.VarChar, 50);
                cn.Value = us.FirstName;
                cmd.Parameters.Add(cn);

                SqlParameter cr = new SqlParameter("LastName", SqlDbType.VarChar, 50);
                cr.Value = us.LastName;
                cmd.Parameters.Add(cr);


                SqlParameter cy = new SqlParameter("Company", SqlDbType.VarChar, 50);
                cy.Value = us.LastName;
                cmd.Parameters.Add(cy);

                SqlParameter at = new SqlParameter("MobileNumber", SqlDbType.VarChar, 50);
                at.Value = us.MobileNumber;
                cmd.Parameters.Add(at);

                SqlParameter ad = new SqlParameter("Telephone", SqlDbType.VarChar, 50);
                ad.Value = us.Telephone;
                cmd.Parameters.Add(ad);

                SqlParameter cg = new SqlParameter("EmailId", SqlDbType.VarChar, 50);
                cg.Value = us.EmailId;
                cmd.Parameters.Add(cg);


                SqlParameter ri = new SqlParameter("ReferenceId", SqlDbType.VarChar, 50);
                ri.Value = us.ReferenceId;
                cmd.Parameters.Add(ri);


                SqlParameter ai = new SqlParameter("AoiId", SqlDbType.Int);
                ai.Value = us.AoiId;
                cmd.Parameters.Add(ai);

                SqlParameter ct = new SqlParameter("Address", SqlDbType.VarChar, 50);
                ct.Value = us.Address;
                cmd.Parameters.Add(ct);

                SqlParameter fx = new SqlParameter("Fax", SqlDbType.VarChar, 50);
                fx.Value = us.Fax;
                cmd.Parameters.Add(fx);

               
                SqlParameter co = new SqlParameter("CountryId", SqlDbType.Int);
                co.Value = us.CountryId;
                cmd.Parameters.Add(co);


                SqlParameter zc = new SqlParameter("ZipCode", SqlDbType.VarChar);
                zc.Value = us.ZipCode;
                cmd.Parameters.Add(zc);


                SqlParameter st = new SqlParameter("State", SqlDbType.VarChar);
                st.Value = us.State;
                cmd.Parameters.Add(st);


                SqlParameter et = new SqlParameter("EntryDate", SqlDbType.Date);
                et.Value = us.EntryDate;
                cmd.Parameters.Add(et);


                SqlParameter ds = new SqlParameter("Description", SqlDbType.VarChar);
                ds.Value = us.Description;
                cmd.Parameters.Add(ds);  
                                                          
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

            
    
    }
}
