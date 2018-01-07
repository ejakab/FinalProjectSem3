using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Reflection;

namespace FinalProjectSem3
{
    public partial class Default : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["MYDB"].ConnectionString;
        object userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["userID"] != null)
            {
                Response.Redirect("Lobby.aspx");    
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string sqlQuery = "SELECT UserID FROM FinalProject_User WHERE UserEmail=@email AND UserPassword=@password";
                SqlCommand cmdCheckUser = new SqlCommand(sqlQuery, con);
                cmdCheckUser.Parameters.AddWithValue("@email", txtEmail.Text);
                cmdCheckUser.Parameters.AddWithValue("@password", txtPassword.Text);

                con.Open();
                userID = cmdCheckUser.ExecuteScalar();
                con.Close();

                if (userID != null)
                {
                    Session["userID"] = userID;
                    Response.Redirect("Lobby.aspx");
                }
                else
                {
                    lblLoginError.Text = "Incorrect e-mail or password";
                }
            }

        }
    }
}