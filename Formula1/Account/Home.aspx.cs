using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Formula1.Account
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Slanje

            try
            {
                connection.Open();

                string imePrezime = ime.Text;
                string mail = email.Text;
                string poruka = komentar.Text;

                WriteUs(imePrezime, mail, poruka);

                Response.Redirect("/Account/Home.aspx", false);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Greska.");
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
            }
        }

        protected void WriteUs(string imePrezime, string mail, string poruka)
        {
            SqlParameter p1 = new SqlParameter();
            SqlParameter p2 = new SqlParameter();
            SqlParameter p3 = new SqlParameter();

            p1.Value = imePrezime;
            p2.Value = mail;
            p3.Value = poruka;

            p1.ParameterName = "imePrezime";
            p2.ParameterName = "mail";
            p3.ParameterName = "poruka";

            string upit = "INSERT INTO writeUs (imePrezime, email, poruka) VALUES (@imePrezime, @mail, @poruka)";
            SqlCommand command = new SqlCommand(upit, connection);
            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.Parameters.Add(p3);
            command.ExecuteNonQuery();
        }
    }
}