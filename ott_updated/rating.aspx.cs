using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ott_updated
{
	public partial class rating : System.Web.UI.Page
	{
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Documents\ott.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
		{
            conn.Open();
        }

        protected void Rate(object sender, EventArgs e){

           

            Response.Redirect("./Default.aspx");
        }


    }
}