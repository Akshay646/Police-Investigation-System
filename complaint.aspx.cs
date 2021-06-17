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
    public partial class complaint : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            con.Open();
           
            SqlCommand cmd = new SqlCommand("insert into tbl_complaint values(@Caseno,@Criminalname,@Address,@Date,@Crimetype, @Gender,@Mobileno,@Crimeplace,@Crimebrief,@Penalty,@Handledby,@Casestatus) ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@Caseno", caseno.Text);
            cmd.Parameters.AddWithValue("@Criminalname", criminalname.Text);
            cmd.Parameters.AddWithValue("@Address", address.Text);
            cmd.Parameters.AddWithValue("@Date", date.Text);
            cmd.Parameters.AddWithValue("@Crimetype", crimetype.Text);
            cmd.Parameters.AddWithValue("@Gender", gender.Text);
            cmd.Parameters.AddWithValue("@Mobileno", mobileno.Text);
            cmd.Parameters.AddWithValue("@Crimeplace", crimeplace.Text);
            cmd.Parameters.AddWithValue("@Crimebrief", crimebrief.Text);
            cmd.Parameters.AddWithValue("@Penalty", penalty.Text);
            cmd.Parameters.AddWithValue("@Handledby", handledby.Text);
            cmd.Parameters.AddWithValue("@Casestatus", casestatus.Text);


            cmd.ExecuteNonQuery();
            caseno.Text = "";
            criminalname.Text = "";
            address.Text = "";
            date.Text = "";
            crimetype.Text = "";
            gender.Text = "";
            mobileno.Text = "";
            crimeplace.Text = "";
            crimebrief.Text = "";
            penalty.Text = "";
            handledby.Text = "";
            casestatus.Text = "";





            Label1.Text = "Complaint added successfully";

            con.Close();
        }
    }
}