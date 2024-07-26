using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                Label1.Visible=false;
                Label2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS)) 
            {
                SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramuser=new SqlParameter("@UserName",TextBox1.Text);
                SqlParameter paramemail = new SqlParameter("@Email", TextBox2.Text);
                SqlParameter parampassword = new SqlParameter("@Password", TextBox3.Text);
                SqlParameter paramcfirmpassword = new SqlParameter("@ConfirmPassword", TextBox4.Text);

                cmd.Parameters.Add(paramuser);
                cmd.Parameters.Add(paramemail);
                cmd.Parameters.Add(parampassword);
                cmd.Parameters.Add(paramcfirmpassword);

                con.Open();
                int returncode = (int)cmd.ExecuteScalar();
                Label1.Visible = true;
                if(returncode == -1) 
                {
                    Label1.Text = "UserName Already in use ,Please choose another username";
                }
                else 
                {
                    Label1.Text = "Registration Successfully! Now You can login";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Authenticatelogin(TextBox5.Text,TextBox6.Text)) 
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox5.Text, false);
            }
            else 
            {
                Label2.Visible = true;
                Label2.Text = "Invalid UserName or Password";
            }
        }
        private bool Authenticatelogin(string username,string password) 
        {
            string CS = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS)) 
            {
                SqlCommand cmd = new SqlCommand("spGetlogin", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramusername = new SqlParameter("@UserName", username);
                SqlParameter parampassword = new SqlParameter("@Password", password);

                cmd.Parameters.Add(paramusername);
                cmd.Parameters.Add(parampassword);

                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;

            }
        }
    }
}