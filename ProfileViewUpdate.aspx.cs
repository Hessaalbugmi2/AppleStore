using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppleStoreShop
{
    public partial class ProfileViewUpdate : System.Web.UI.Page
    {
        String conn = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProfile();
            }
        }

        void LoadProfile()
        {
            int userId = Convert.ToInt32(Session["PersonId"]); // Example: use session value Session["UserID"]

            using (SqlConnection con = new SqlConnection(conn))
            {
                string query = "SELECT Name, Email, Password, Gender, JoinedDate FROM Person WHERE ID = @ID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ID", userId);
                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    // SHOW ON VIEW PANEL
                    lblName.Text = dr["Name"].ToString();
                    lblEmail.Text = dr["Email"].ToString();
                    lblGender.Text = dr["Gender"].ToString();
                    lblJoined.Text = Convert.ToDateTime(dr["JoinedDate"]).ToString("yyyy-MM-dd");

                    // SET EDIT CONTROLS
                    txtName.Text = dr["Name"].ToString();
                    txtEmail.Text = dr["Email"].ToString();
                    txtPassword.Text = dr["Password"].ToString();
                    ddlGender.SelectedValue = dr["Gender"].ToString();
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            PanelView.Visible = false;
            PanelEdit.Visible = true;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            PanelEdit.Visible = false;
            PanelView.Visible = true;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int userId = 1;

            using (SqlConnection con = new SqlConnection(conn))
            {
                string update = @"UPDATE Person 
                                  SET Name=@Name, Email=@Email, Password=@Password, Gender=@Gender 
                                  WHERE ID=@ID";

                SqlCommand cmd = new SqlCommand(update, con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@ID", userId);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            // Reload updated data
            LoadProfile();

            PanelEdit.Visible = false;
            PanelView.Visible = true;
        } 
    }
}