using System;
using System.Data.SqlClient;

namespace ott_updated
{
    public partial class Faqs : System.Web.UI.Page
    {
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shwet\\Documents\\myottdb.mdf;Integrated Security=True;Connect Timeout=30";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string emailid = emailBox.Text;
                string myQuestion = questionBox.Text;
                string myDetails = detailsBox.Value;
                Random r = new Random();
                int myId = r.Next();

                using (SqlCommand command = new SqlCommand("INSERT INTO faqs (Id, Email, Question, Details) VALUES (@Id, @Email, @Question, @Details)", connection))
                {
                    command.Parameters.AddWithValue("@Id", myId);
                    command.Parameters.AddWithValue("@Email", emailid);
                    command.Parameters.AddWithValue("@Question", myQuestion);
                    command.Parameters.AddWithValue("@Details", myDetails);
                    int numRows = command.ExecuteNonQuery();
                    if (numRows > 0)
                    {
                        Response.Write("<p class='tagline'>Query submitted successfully.</p>");
                    }
                    else
                    {
                        Response.Write("<p class='tagline'>Query not submitted.</p>");
                    }
                }
            }

        }

        protected void displayQueries_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shwet\\Documents\\myottdb.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connection = new SqlConnection(connectionString);

            SqlCommand command = new SqlCommand("SELECT * FROM faqs", connection);
            connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            dr.Read();
            GridView1.Visible = true;
            GridView1.DataSource = dr;
            GridView1.DataBind();
            connection.Close();
        }

        protected void deleteQuery_Click(object sender, EventArgs e)
        {
            int myId = Convert.ToInt32(deleteId.Text);
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\shwet\\Documents\\myottdb.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            SqlCommand command = new SqlCommand("DELETE FROM faqs WHERE Id="+myId, connection);

            int numRows = command.ExecuteNonQuery();
            if (numRows > 0)
            {
                Response.Write("<p class='tagline'>Query successfully Deleted.</p>");
            }
            else
            {
                Response.Write("<p class='tagline'>Could not Delete Query.</p>");
            }
        }

    }
}