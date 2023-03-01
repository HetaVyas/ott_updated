using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Caching;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace ott_updated
{
    public partial class Contact : Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shwet\\Documents\\myottdb.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT * FROM services";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable table = new DataTable();
                        adapter.Fill(table);
                        MovieRepeater.DataSource = table;
                        MovieRepeater.DataBind();
                    }
                }
            }

        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            string searchTerm = searchBox.Text;
            string query = "SELECT * FROM services WHERE title LIKE '%' + @searchTerm + '%'";
            SqlConnection conn = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.Parameters.AddWithValue("@searchTerm", searchTerm);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            da.Fill(ds, "services");

            MovieRepeater.DataSource = ds.Tables["services"];
            MovieRepeater.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Faqs.aspx");
        }

    }
}