using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        GridView1.Columns[1].Visible = false;
        if (Session["username"] == null)
        {
            Label1.Text = "niezalogowany";
            GridView1.Columns[0].Visible = false;
            Button1.Text = "zaloguj";
        }
        else
        {
            Label1.Text = Session["username"].ToString();
            GridView1.Columns[0].Visible = true;
            Button1.Text = "wyloguj ";

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("~/logowanie.aspx");
    }



    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        FormView1.Visible = true;
        FormView1.ChangeMode(FormViewMode.ReadOnly);
        DataKey dk = GridView1.SelectedDataKey;
        Session["index"] = dk.Value.ToString();
        FormView1.PageIndex = 0;
        FormView1.DataBind();
        if (Session["index"] != null)
        {
            if (FormView1.DataItemCount == 0)
            {
                FormView1.ChangeMode(FormViewMode.Insert);
            }


        }

    }
}

   /* protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        string ocen = ocenka.text;
        if((int)ocenka.text == )
    }
} */
