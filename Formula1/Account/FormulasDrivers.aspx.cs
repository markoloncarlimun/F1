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
    public partial class ForumlasDrivers : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Unos Formule i vozaca

            if(TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
            {
                try
                {
                    string marka = TextBox1.Text;
                    int godinaProizvodnje = int.Parse(TextBox2.Text);
                    connection.Open();
                    InsertFormula(marka, godinaProizvodnje);

                    string imePrezime = TextBox3.Text;
                    string tim = TextBox4.Text;
                    InsertDriver(imePrezime, tim);
                    Response.Redirect("/Account/FormulasDrivers.aspx", false);
                }
                catch (Exception ex)
                {
                    Label3.Text = "Error.";
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                    System.Diagnostics.Debug.WriteLine(ex.StackTrace);
                }
                finally
                {
                    connection.Close();
                }
            }
            else
            {
                Label3.Text = "Fields can not be blank!";
                return;
            }
        }

        protected void InsertFormula(string marka, int godinaProizvodnje)
        {
            SqlParameter p1 = new SqlParameter();
            SqlParameter p2 = new SqlParameter();
            p1.Value = marka;
            p1.ParameterName = "marka";
            p2.Value = godinaProizvodnje;
            p2.ParameterName = "godinaProizvodnje";
            string upit = "INSERT INTO formula (marka, godinaProizvodnje) VALUES (@marka, @godinaProizvodnje)";
            SqlCommand command = new SqlCommand(upit, connection);
            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.ExecuteNonQuery();
        }

        protected void InsertDriver(string imePrezime, string tim)
        {
            SqlParameter p1 = new SqlParameter();
            SqlParameter p2 = new SqlParameter();
            p1.Value = imePrezime;
            p1.ParameterName = "imePrezime";
            p2.Value = tim;
            p2.ParameterName = "tim";
            string upit = "INSERT INTO vozaci (imePrezime, imeTima) VALUES (@imePrezime, @tim)";
            SqlCommand command = new SqlCommand(upit, connection);
            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.ExecuteNonQuery();
        }
    }
}