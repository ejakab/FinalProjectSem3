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
using System.Drawing;

namespace FinalProjectSem3
{
    public partial class OverTheCounterMarket : System.Web.UI.Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["MYDB"].ConnectionString;
        object userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string sqlQueryBid = "SELECT * FROM FinalProject_Offers WHERE Country = @country AND Product = @product AND isBid = 1";
                string sqlQueryAsk = "SELECT * FROM FinalProject_Offers WHERE Country = @country AND Product = @product AND isBid = 0";
                SqlCommand cmdDisplayOffersBid = new SqlCommand(sqlQueryBid, con);
                SqlCommand cmdDisplayOffersAsk = new SqlCommand(sqlQueryAsk, con);
                cmdDisplayOffersBid.Parameters.AddWithValue ("@country",ddlCountry.SelectedValue);
                cmdDisplayOffersBid.Parameters.AddWithValue("@product", rblProduct.SelectedValue);

                cmdDisplayOffersAsk.Parameters.AddWithValue("@country", ddlCountry.SelectedValue);
                cmdDisplayOffersAsk.Parameters.AddWithValue("@product", rblProduct.SelectedValue);

                DataTable offers1 = new DataTable();
                DataTable offers2 = new DataTable();


                con.Open();
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                SqlDataAdapter adapter2 = new SqlDataAdapter();
                adapter1.SelectCommand = cmdDisplayOffersBid;
                adapter1.Fill(offers1);
                adapter2.SelectCommand = cmdDisplayOffersAsk;
                adapter2.Fill(offers2);
                con.Close();

                lvBid.DataSource = offers1;
                lvBid.DataBind();
                lvAsk.DataSource = offers2;
                lvAsk.DataBind();

                
            }
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string sqlQueryBid = "SELECT * FROM FinalProject_Offers WHERE Country = @country AND Product = @product AND isBid = 1";
                string sqlQueryAsk = "SELECT * FROM FinalProject_Offers WHERE Country = @country AND Product = @product AND isBid = 0";
                SqlCommand cmdDisplayOffersBid = new SqlCommand(sqlQueryBid, con);
                SqlCommand cmdDisplayOffersAsk = new SqlCommand(sqlQueryAsk, con);
                cmdDisplayOffersBid.Parameters.AddWithValue("@country", ddlCountry2.SelectedValue);
                cmdDisplayOffersBid.Parameters.AddWithValue("@product", rblProduct2.SelectedValue);

                cmdDisplayOffersAsk.Parameters.AddWithValue("@country", ddlCountry2.SelectedValue);
                cmdDisplayOffersAsk.Parameters.AddWithValue("@product", rblProduct2.SelectedValue);

                DataTable offers1 = new DataTable();
                DataTable offers2 = new DataTable();


                con.Open();
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                SqlDataAdapter adapter2 = new SqlDataAdapter();
                adapter1.SelectCommand = cmdDisplayOffersBid;
                adapter1.Fill(offers1);
                adapter2.SelectCommand = cmdDisplayOffersAsk;
                adapter2.Fill(offers2);
                con.Close();

                lvBid2.DataSource = offers1;
                lvBid2.DataBind();
                lvAsk2.DataSource = offers2;
                lvAsk2.DataBind();


            }
        }
       
        protected void btnOffer_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnAddOfferSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string sqlQueryAddOfferInsertOtc = "INSERT INTO FinalProject_Offers"+
                                                    "(Country, Product, Quantity, Price, isBid)"+
                                                    "VALUES"+
                                                    "(@country, @product, @quantity, @price, @isBid)";

                SqlCommand cmdAddOtcOffer = new SqlCommand(sqlQueryAddOfferInsertOtc, con);
                cmdAddOtcOffer.Parameters.AddWithValue("@country", ddlAddOfferCountry.SelectedValue);
                cmdAddOtcOffer.Parameters.AddWithValue("@isBid", rblAddOfferIsBid.SelectedValue);
                cmdAddOtcOffer.Parameters.AddWithValue("@product", rblAddOfferProduct.SelectedValue);
                cmdAddOtcOffer.Parameters.AddWithValue("@quantity", txtQuantity.Text);
                cmdAddOtcOffer.Parameters.AddWithValue("@price", txtPrice.Text);

                con.Open();
                cmdAddOtcOffer.ExecuteNonQuery();
                con.Close();


            }
        }

        protected void lnkBtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
}