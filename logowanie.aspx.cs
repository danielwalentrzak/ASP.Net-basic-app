using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            string usrname = Session["username"].ToString();
            if (usrname.Equals("admin"))
            {
                Response.Redirect("~/admin.aspx");
            }
            else
            {
                Response.Redirect("~/Default2.aspx");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = null;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["projektConnectionString"].ConnectionString); //odwolanie do webconf
        con.Open(); //otwieramy polaczenie
        SqlDataAdapter adapter = new SqlDataAdapter();
        //SqlCommand cmd = new SqlCommand("Select haslo from uzytkownicy where nick=@nick", con);
        //cmd.Parameters.AddWithValue("@nick", TextBox1.Text);
        //cmd.Parameters.AddWithValue("@haslo", TextBox2.Text);
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label3.Text = "Wszystkie pola sa wymagane!";

        }
        else
        {
            Label3.Text = "";
            SqlCommand zap = new SqlCommand("Select count(nick) from uzytkownicy where nick=@nick and haslo=@haslo", con);
            zap.Parameters.AddWithValue("@nick", TextBox1.Text);
            zap.Parameters.AddWithValue("@haslo", TextBox2.Text);
            int a = (int)zap.ExecuteScalar();
            if (a == 1)
            {
               Session["username"] = TextBox1.Text;
               string login = Session["username"].ToString();
                if (login.Equals("admin"))
                {
                    Response.Redirect("~/admin.aspx");
                }
                else
                {
                    Response.Redirect("~/Default2.aspx");
                }
            }
            else
            {
                Label3.Text = "zle dane logowania";
            }
        }
        con.Close();
    }
}
