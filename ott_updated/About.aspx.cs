using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;
using Microsoft.Ajax.Utilities;
using System.Web;

namespace ott_updated
{
    public partial class About : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Documents\ott.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            errordialog.Visible = false;
            conn.Open();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "" || TextBox2.Text == "" || language.Text == "" || DropDownList1.Text == "" || Plan.Text=="") {
                Label1.Text = "Enter all details";
                errordialog.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "hide_errormsg();", true);
            }
            else
            {

                Guid uuid = Guid.NewGuid();
                string myuuidAsString = uuid.ToString();

                SqlDataAdapter SqlAdapter = new SqlDataAdapter("SELECT * FROM Subscriber where email='" + TextBox2.Text + "' OR username='"+Username.Text+"'" , conn);

                DataTable dt = new DataTable();
                SqlAdapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Label1.Text = "email or username already exist";
                    errordialog.Visible = true;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "hide_errormsg();", true);
                }
                else
                {

                    SqlCommand cmd = new SqlCommand("insert into Subscriber values('" + myuuidAsString + "','" + Username.Text + "','" + TextBox1.Text + "','"+ TextBox2.Text +"','" + TextBox3.Text + "','" + language.Text + "','" + DropDownList1.Text + "','" + Plan.Text + "')", conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Contact.aspx", true);
                }
            }            
        }

        
    }
}