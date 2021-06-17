using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text.RegularExpressions;


namespace Police_Investigation_System_NEW_
{
    public partial class searchrecord : System.Web.UI.Page
    {
        SqlConnection con;

      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_complaint"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int Caseno = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Criminalname = (row.Cells[2].Controls[0] as TextBox).Text;
            string Address = (row.Cells[3].Controls[0] as TextBox).Text;
            int Date = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Crimetype = (row.Cells[5].Controls[0] as TextBox).Text;
            string Gender = (row.Cells[6].Controls[0] as TextBox).Text;
            int Mobileno = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string Crimeplace = (row.Cells[8].Controls[0] as TextBox).Text;
            string Crimebrief = (row.Cells[9].Controls[0] as TextBox).Text;
            string Penalty = (row.Cells[10].Controls[0] as TextBox).Text;
            string Handledby = (row.Cells[11].Controls[0] as TextBox).Text;
            string Casestatus = (row.Cells[12].Controls[0] as TextBox).Text;
            string constr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE tbl_complaint SET Criminalname = @Criminalname, Address = @Address, Date = @Date, Crimetype = @Crimetype, Gender = @Gender, Mobileno = @Mobileno, Crimeplace = @Crimeplace, Crimebrief = @Crimebrief, Penalty = @Penalty, Handledby = @Handledby, Casestatus = @Casestatus WHERE Caseno = @Caseno"))
                {
                    cmd.Parameters.AddWithValue("@Caseno", Caseno);
                    cmd.Parameters.AddWithValue("@Criminalname", Criminalname);
                    cmd.Parameters.AddWithValue("@Address", Address);
                    cmd.Parameters.AddWithValue("@Date", Date);
                    cmd.Parameters.AddWithValue("@Crimetype", Crimetype);
                    cmd.Parameters.AddWithValue("@Gender", Gender);
                    cmd.Parameters.AddWithValue("@Mobileno", Mobileno);
                    cmd.Parameters.AddWithValue("@Crimeplace", Crimeplace);
                    cmd.Parameters.AddWithValue("@Crimebrief", Crimebrief);
                    cmd.Parameters.AddWithValue("@Penalty", Penalty);
                    cmd.Parameters.AddWithValue("@Handledby", Handledby);
                    cmd.Parameters.AddWithValue("@Casestatus", Casestatus);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[0].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Caseno = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string constr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM tbl_complaint WHERE Caseno = @Caseno"))
                {
                    cmd.Parameters.AddWithValue("@Caseno", Caseno);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindGrid();
        }
   

    }

}
