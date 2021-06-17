using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Police_Investigation_System_NEW_
{
    public partial class dailyentry : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void savebtn_Click(object sender, EventArgs e)
        {
            con.Open();
            
           SqlCommand cmd = new SqlCommand("insert into tbl_entry values(@Entryno,@Entrytype,@Date,@Policeid,@Entrydesciption) ", con);
            cmd.Parameters.AddWithValue("@Entryno", entryno.Text);
            cmd.Parameters.AddWithValue("@Entrytype", entrytype.Text);
            cmd.Parameters.AddWithValue("@Date", entrydate.Text);
            cmd.Parameters.AddWithValue("@Policeid", policeid.Text);
            cmd.Parameters.AddWithValue("@Entrydesciption",entrydesciption.Text);
            

            cmd.ExecuteNonQuery();
            entryno.Text = "";
            entrytype.Text = "";
            entrydate.Text = "";
            policeid.Text = "";
            entrydesciption.Text = "";





            Label2.Text = "Entry Saved";

            con.Close();
        }
    }
}