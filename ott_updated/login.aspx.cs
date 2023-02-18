using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;

namespace ott_updated
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Documents\ott.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            errordialog.Visible = false;
            conn.Open();
        }

        protected void logout_click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e){

            SqlDataAdapter SqlAdapter = new SqlDataAdapter("SELECT * FROM Subscriber where email = '"+ TextBox2.Text + "' AND password='"+ TextBox3.Text+"'",conn);

            DataTable dt = new DataTable();
            SqlAdapter.Fill(dt);

            if (dt.Rows.Count > 0 ){
                Response.Redirect("Default.aspx",true);
            }
            else{
                Label1.Text = "Invalid Credential";
                errordialog.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "hide_errormsg();", true);
            }
        }
    }
}