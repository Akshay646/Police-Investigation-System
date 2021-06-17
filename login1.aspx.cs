using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Police_Investigation_System_NEW_
{
    public partial class login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(  
       "Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\ady23617\\source\\repos\\Police Investigation System(NEW)\\App_Data\\police.mdf; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("select * from tbl_register where Emailid=@Emailid and Password=@Password", con);
            cmd.Parameters.AddWithValue("@Emailid", username.Text);
            cmd.Parameters.AddWithValue("@Password", userpasswd.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if(username.Text=="admin" && userpasswd.Text=="admin")
            {
                Response.Redirect("executivehome.aspx");
            }
          if (dt.Rows.Count > 0)
            {

                Session["username"] = username.Text;
                    Response.Redirect("staffhome.aspx");
                Session.RemoveAll();

            }
            else
            {

                Label1.Text = "Your username and word is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;
              
             
            }

        }
    }


}