using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;
using System.Diagnostics;

namespace ott_updated
{
    public partial class profile : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Documents\ott.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            error_dialog.Visible = false;
            conn.Open();
        }

        protected void Login_click(object sender,EventArgs e){
            Response.Redirect("login.aspx");
        }

        protected void Change_Email(object sender, EventArgs e){
            if (Request.Cookies["email"]!=null){
                var value = Request.Cookies["email"].Value;
                SqlDataAdapter SqlAdapter = new SqlDataAdapter("SELECT * FROM Subscriber where email = '"+ value + "' AND password='"+ TextBox2.Text+"'",conn);
                DataTable dt = new DataTable();
                SqlAdapter.Fill(dt);


                /* CHECK IF EMAIL ID EXIST OR NOT */
                SqlDataAdapter Email_exist = new SqlDataAdapter("SELECT * FROM Subscriber where email = '"+ value + "'",conn);
                DataTable email_dt = new DataTable();
                Email_exist.Fill(email_dt);

                if (email_dt.Rows.Count > 0){
                    Label2.Text = "Email Already Exist";
                    error_dialog.Visible = true;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "hide_msg();", true);
                }
                else{
                    if (dt.Rows.Count > 0 ){
                        SqlCommand cmd = new SqlCommand("UPDATE Subscriber SET email = '"+ TextBox1.Text + "' where email='"+ value+"'",conn);
                        cmd = new SqlCommand("update CustomizedPackage set PackDuration='" + duration + "', No._Of_Devices='" + devices + "', Ad_Disabled='" + Ad + "', Price='" + price+ "' where PackId='"+ packid + "'", con);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Redirect("Default.aspx",true);
                    }
                    else{
                        Label2.Text = "Invalid Credential";
                        error_dialog.Visible = true;
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "hide_msg();", true);
                    }
                }
                
                

                //SqlDataAdapter SqlAdapter = new SqlDataAdapter("UPDATE Subscriber SET email = '"+ TextBox2.Text + "' where email='"+ value+"'",conn);

            }
            else{
                Label2.Text = "Login First!";
                error_dialog.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "hide_msg();", true);
                //Response.Redirect("login.aspx");
            }
            
        } 

        protected void Change_Password(object sender, EventArgs e) {
            if (Request.Cookies["email"] != null)
            {
                var value = Request.Cookies["email"].Value;
                SqlDataAdapter SqlAdapter = new SqlDataAdapter("SELECT * FROM Subscriber where email = '" + value + "' AND password='" + CurrentPassword.Text + "'", conn);
                

                DataTable dt = new DataTable();
                SqlAdapter.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Subscriber SET password = '" + NewPassword.Text + "' where email='" + value + "'", conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Default.aspx", true);
                }
                else
                {
                    Label2.Text = "Invalid Credential";
                    error_dialog.Visible = true;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "hide_msg();", true);
                }
            }
            else
            {

                Response.Redirect("login.aspx");
            }
        }
    }
}