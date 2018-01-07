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
    public partial class SignUp : System.Web.UI.Page
    {
        object userID;

        string conStr = ConfigurationManager.ConnectionStrings["MYDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                Response.Redirect("Lobby.aspx");
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if(txtEmail.Text.Length > 0)
            {
                if(txtPassword.Text.Length > 0)
                {
                    if(txtPassword2.Text.Length >0)
                    {
                        if (txtPassword.Text == txtPassword2.Text)
                        {
                            using (SqlConnection con = new SqlConnection(conStr))
                            {
                                string sqlQueryExistingUser = "SELECT FinalProject_User.UserID FROM FinalProject_User WHERE FinalProject_User.UserEmail= @email";
                                SqlCommand cmdCheckUser = new SqlCommand(sqlQueryExistingUser, con);
                                cmdCheckUser.Parameters.AddWithValue("@email", txtEmail.Text);
                                con.Open();
                                userID = cmdCheckUser.ExecuteScalar();
                                con.Close();
                            }
                            if (userID == null)
                            {
                                using (SqlConnection con = new SqlConnection(conStr))
                                {
                                    string sqlQueryAddUser = "INSERT INTO FinalProject_User (UserEmail, UserPassword) VALUES (@email, @password)";
                                    SqlCommand cmdAddUser = new SqlCommand(sqlQueryAddUser, con);
                                    cmdAddUser.Parameters.AddWithValue("@email", txtEmail.Text);
                                    cmdAddUser.Parameters.AddWithValue("@password", txtPassword.Text);

                                    con.Open();
                                    userID = cmdAddUser.ExecuteScalar();
                                    con.Close();
                                    Session["userID"] = userID;
                                    Response.Redirect("Lobby.aspx");
                                }
                            }
                            else
                            {
                                lblErrorSignUp.Text = "Email already in use, try Log In instead";
                            }



                            //using (SqlConnection con = new SqlConnection(conStr))
                            //{
                            //    string sqlQuery = "INSERT INTO FinalProject_User (UserEmail, UserPassword) VALUES (@email, @password)";
                            //    SqlCommand cmdAddUser = new SqlCommand(sqlQuery,con);
                            //    cmdAddUser.Parameters.AddWithValue("@email", txtEmail.Text);
                            //    cmdAddUser.Parameters.AddWithValue("@password", txtPassword.Text);

                            //    con.Open();
                            //    var userID = cmdAddUser.ExecuteScalar();
                            //    con.Close();
                            //    Response.Write((char)userID);
                            //    //Session["userID"] = (int)userID;

                            //}
                        }
                        else
                        {
                            lblErrorSignUp.Text = "Missmatching passwords.";
                        }
                    }
                    else
                    {
                        lblErrorSignUp.Text = "Reenter password.";
                    }   
                }
                else
                {
                    lblErrorSignUp.Text = "Enter a password.";
                }
            }
            else
            {
                lblErrorSignUp.Text = "Enter a valid Username.";
            }
        }
    }
}