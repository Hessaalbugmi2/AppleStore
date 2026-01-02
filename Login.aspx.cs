using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace AppleStoreShop
{
    public partial class Login : System.Web.UI.Page
    {
        String CS = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Person"] != null)
                {
                    Response.Redirect("home.aspx");
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM [Person] where Email=@email", con);
                    cmd.Parameters.AddWithValue("@email", email.Value);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable datatable = new DataTable();
                    sda.Fill(datatable);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    if (datatable.Rows.Count > 0)
                    {
                        if(datatable.Rows[0]["Password"].ToString() == password.Value)
                        {
                            Session["Person"] = datatable;
                            Session["personName"] = datatable.Rows[0]["Name"].ToString();
                            Session["PersonId"] = datatable.Rows[0]["ID"].ToString();
                            string s = datatable.Rows[0]["ID"].ToString();
                            Response.Redirect("home.aspx");
                        }
                        else
                        {
                            lableMsg.ForeColor = System.Drawing.Color.Red;
                            lableMsg.Text = "Invalid user";
                        }
                    }
                    else
                    {
                        lableMsg.ForeColor = System.Drawing.Color.Red;
                        lableMsg.Text = "Invalid user";
                    }
                }
            }
            catch (Exception x)
            {

            }
        } 
    }
}