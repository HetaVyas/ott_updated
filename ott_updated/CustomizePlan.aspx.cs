using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CustomizePlan : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Administrator\\Documents\\ottt.mdf;Integrated Security=True;Connect Timeout=30");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        String packid = TextBox1.Text;
        String duration = DropDownList1.SelectedItem.Value;
        int devices = Convert.ToInt32(RadioButtonList1.SelectedItem.Value);
        String Ad = RadioButtonList2.SelectedItem.Value;
        int val;
        if (Ad == "No") { val = 0;}
        else
        { val = 1;}

        double price = 3 * Convert.ToInt32(duration) + 0.5 * devices + 2 * val;
            con.Open();
            cmd = new SqlCommand("insert into CustomizedPackage values('" + packid + "','" + duration + "','" + devices + "','" + Ad + "','" + price + "')", con);
            int nra = cmd.ExecuteNonQuery();
            if (nra > 0)
            {
                Response.Write("Added Package");
            }
            else
                Response.Write("Some Error Occurred"); 
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String duration = DropDownList1.SelectedItem.Value;
        int devices = Convert.ToInt32(RadioButtonList1.SelectedItem.Value);
        String Ad = RadioButtonList2.SelectedItem.Value;
        int val;
        if (Ad == "No") { val = 0; }
        else
        { val = 1; }

        double price = 3 * Convert.ToInt32(duration) + 0.5 * devices + 2 * val;
        Response.Write("Your Plan Would Cost Rs. " + price);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        String packid = TextBox1.Text;
        String duration = DropDownList1.SelectedItem.Value;
        int devices = Convert.ToInt32(RadioButtonList1.SelectedItem.Value);
        String Ad = RadioButtonList2.SelectedItem.Value;
        int val;
        if (Ad == "No") { val = 0; }
        else
        { val = 1; }

        double price = 3 * Convert.ToInt32(duration) + 0.5 * devices + 2 * val;
        con.Open();
        cmd = new SqlCommand("Update CustomizedPackage set PackDuration='" + duration + "',No_Of_Devices='" + devices +"', Ad_Disabled='" + Ad + "', Price='" + price + "' where PackId='" + packid + "'", con);
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
        {
            Response.Write("Package Updated");
        }
        else
            Response.Write("Some Error Occurred");
        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        String packid = TextBox1.Text;
        con.Open();
        cmd = new SqlCommand("Delete CustomizedPackage where PackId ='"+packid+"'",con);
        int nra = cmd.ExecuteNonQuery();
        if (nra > 0)
        {
            Response.Write("Package Deleted");
        }
        else
            Response.Write("Some Error Occurred");
        con.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        String packid = TextBox1.Text;
        con.Open();
      
        con.Close();
    }
}