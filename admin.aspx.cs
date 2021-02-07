using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/logowanie.aspx");
        }
    
        if (! Session["username"].ToString().Equals("admin"))
        {
            Response.Redirect("~/Default2.aspx");
        }
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataKey dk = GridView3.SelectedDataKey;
        int a = 0;
        formuzytkownicy.PageIndex = 0;
        formuzytkownicy.DataBind();
        while (formuzytkownicy.DataKey.Value.ToString() != dk.Value.ToString()
                && a < formuzytkownicy.PageCount)
        {
            if (a + 1 < formuzytkownicy.PageCount)
            {
                formuzytkownicy.PageIndex++;
                formuzytkownicy.DataBind();
            }
        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataKey dk = GridView2.SelectedDataKey;
        int a = 0;
        Formautor.PageIndex = 0;
        Formautor.DataBind();
        while (Formautor.DataKey.Value.ToString() != dk.Value.ToString()
                && a < Formautor.PageCount)
        {
            if (a + 1 < Formautor.PageCount)
            {
                Formautor.PageIndex++;
                Formautor.DataBind();
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataKey dk = GridView1.SelectedDataKey;
        int a = 0;
        formgatunek.PageIndex = 0;
        formgatunek.DataBind();
        while (formgatunek.DataKey.Value.ToString() != dk.Value.ToString()
                && a < formgatunek.PageCount)
        {
            if (a + 1 < formgatunek.PageCount)
            {
                formgatunek.PageIndex++;
                formgatunek.DataBind();
            }
        }

    }

    protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataKey dk = GridView2.SelectedDataKey;
        int a = 0;
        formksiazki.PageIndex = 0;
        formksiazki.DataBind();
        while (formksiazki.DataKey.Value.ToString() != dk.Value.ToString()
                && a < formksiazki.PageCount)
        {
            if (a + 1 < formksiazki.PageCount)
            {
                formksiazki.PageIndex++;
                formksiazki.DataBind();
            }
        }
    }

    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataKey dk = GridView5.SelectedDataKey;
        int a = 0;
        FormView1.PageIndex = 0;
        FormView1.DataBind();
        while (FormView1.DataKey.Value.ToString() != dk.Value.ToString()
                && a < FormView1.PageCount)
        {
            if (a + 1 < FormView1.PageCount)
            {
                FormView1.PageIndex++;
                FormView1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("~/logowanie.aspx");
    }
}