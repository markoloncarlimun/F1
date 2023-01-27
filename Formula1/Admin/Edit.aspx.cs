using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Formula1.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                connection.Open();
                LoadGrid1();
                LoadGrid2();
                LoadGrid3();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally { connection.Close(); }
        }

        protected void LoadGrid1()
        {
            string upit = "SELECT * FROM formula";
            SqlDataAdapter adapter = new SqlDataAdapter(upit, connection);
            DataTable table = new DataTable();
            adapter.Fill(table);

            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void LoadGrid2()
        {
            string upit = "SELECT * FROM vozaci";
            SqlDataAdapter adapter = new SqlDataAdapter(upit, connection);
            DataTable table = new DataTable();
            adapter.Fill(table);

            GridView2.DataSource = table;
            GridView2.DataBind();
        }

        protected void LoadGrid3()
        {
            string upit = "SELECT * FROM writeUs";
            SqlDataAdapter adapter = new SqlDataAdapter(upit, connection);
            DataTable table = new DataTable();
            adapter.Fill(table);

            GridView3.DataSource = table;
            GridView3.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Formula fill

            GridViewRow row = GridView1.SelectedRow;

            if (row == null)
            {
                FormulaError.Text = "Please select row!";
                return;
            }

            Panel1.Visible = true;

            TextBox1.Text = row.Cells[1].Text;
            TextBox2.Text = row.Cells[2].Text;
            TextBox3.Text = row.Cells[3].Text;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Driver fill

            GridViewRow row = GridView2.SelectedRow;

            if (row == null)
            {
                DriversError.Text = "Please select row!";
                return;
            }

            Panel2.Visible = true;

            TextBox4.Text = row.Cells[1].Text;
            TextBox5.Text = row.Cells[2].Text;
            TextBox6.Text = row.Cells[3].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Update formula

            if (TextBox2.Text != "" && TextBox3.Text != "")
            {
                try
                {
                    connection.Open();

                    string marka = TextBox2.Text;
                    int godinaProizvodnje = int.Parse(TextBox3.Text);
                    UpdateFormula(marka, godinaProizvodnje);
                    Response.Redirect("/Admin/Edit.aspx", false);
                }
                catch (Exception ex)
                {
                    FormulaError.Text = "Error.";
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                    System.Diagnostics.Debug.WriteLine(ex.StackTrace);
                }
                finally
                {
                    connection.Close();
                    LoadGrid1();
                }
            }
            else
            {
                FormulaError.Text = "Fields can not be blank!";
                return;
            }
        }

        protected void UpdateFormula(string marka, int godinaProizvodnje)
        {
            SqlParameter p1 = new SqlParameter();
            SqlParameter p2 = new SqlParameter();
            p1.Value = marka;
            p1.ParameterName = "marka";
            p2.Value = godinaProizvodnje;
            p2.ParameterName = "godinaProizvodnje";
            string upit = $"UPDATE formula SET marka = @marka, godinaProizvodnje = @godinaProizvodnje WHERE IDformule = {TextBox1.Text}";
            SqlCommand command = new SqlCommand(upit, connection);
            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.ExecuteNonQuery();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Delete formula
            try
            {
                connection.Open();

                DeleteFormula();
                Response.Redirect("/Admin/Edit.aspx", false);
            }
            catch (Exception ex)
            {
                FormulaError.Text = "Error.";
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
                LoadGrid1();
            }
        }

        protected void DeleteFormula()
        {
            string upit = $"DELETE FROM formula WHERE IDformule = {TextBox1.Text}";
            SqlCommand command = new SqlCommand(upit, connection);
            command.ExecuteNonQuery();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Update driver
            if (TextBox5.Text != "" && TextBox6.Text != "")
            {
                try
                {
                    connection.Open();

                    string imePrezime = TextBox5.Text;
                    string imeTima = TextBox6.Text;
                    UpdateDriver(imePrezime, imeTima);
                    Response.Redirect("/Admin/Edit.aspx", false);
                }
                catch (Exception ex)
                {
                    DriversError.Text = "Error.";
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                    System.Diagnostics.Debug.WriteLine(ex.StackTrace);
                }
                finally
                {
                    connection.Close();
                    LoadGrid2();
                }
            }
            else
            {
                DriversError.Text = "Fields can not be blank!";
                return;
            }
        }

        protected void UpdateDriver(string imePrezime, string imeTima)
        {
            SqlParameter p1 = new SqlParameter();
            SqlParameter p2 = new SqlParameter();
            p1.Value = imePrezime;
            p1.ParameterName = "imePrezime";
            p2.Value = imeTima;
            p2.ParameterName = "imeTima";
            string upit = $"UPDATE vozaci SET imePrezime = @imePrezime, imeTima = @imeTima WHERE IDvozaca = {TextBox4.Text}";
            SqlCommand command = new SqlCommand(upit, connection);
            command.Parameters.Add(p1);
            command.Parameters.Add(p2);
            command.ExecuteNonQuery();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            // Delete driver
            try
            {
                connection.Open();

                DeleteDriver();
                Response.Redirect("/Admin/Edit.aspx", false);
            }
            catch (Exception ex)
            {
                DriversError.Text = "Error.";
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
            finally
            {
                connection.Close();
                LoadGrid2();
            }
        }

        protected void DeleteDriver()
        {
            string upit = $"DELETE FROM vozaci WHERE IDvozaca = {TextBox4.Text}";
            SqlCommand command = new SqlCommand(upit, connection);
            command.ExecuteNonQuery();
        }
    }
}