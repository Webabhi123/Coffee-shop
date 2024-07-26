using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                Label1.Visible=false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spGetContact", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter paramsname = new SqlParameter("@Name", TextBox1.Text);
                    SqlParameter paramsemail = new SqlParameter("@Email", TextBox2.Text);
                    SqlParameter paramsmessage = new SqlParameter("@Message", TextBox3.Text);

                    cmd.Parameters.Add(paramsname);
                    cmd.Parameters.Add(paramsemail);
                    cmd.Parameters.Add(paramsmessage);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Visible = true;
                    Label1.Text = "Thank You For Contacting Us";
                }
            }
        }
    }
}