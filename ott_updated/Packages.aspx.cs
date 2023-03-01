using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Packages : System.Web.UI.Page
{
    SqlConnection con;
    DataSet ds;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        /* con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\hetav\\Documents\\myDB.mdf;Integrated Security=True;Connect Timeout=30"); */
        GridView1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /* con.Open();
        ds = new DataSet();
        da = new SqlDataAdapter("select * from Packages", con);
        da.Fill(ds,"p");
        GridView1.DataBind();
        this.GridView1.Visible = true;
        con.Close(); */
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CustomizePlan.aspx");
    }
}