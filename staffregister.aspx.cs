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
    public partial class staffregister : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
       /* protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login1.aspx");
        }*/
        protected void savebtn_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
            // SqlConnection con = new SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ady23617\source\repos\Police Investigation System(NEW)\App_Data\regPolice.md;Integrated Security=True" providerName = "System.Data.SqlClient"");
            con.Open();
            //SqlCommand cmd = new SqlCommand("insert into Table values (@Id, @Name, @Rank, @Address,@Contact ,@Password)", con);
            //cmd.Parameters.AddWithValue("Id", Textid.Text);
            //cmd.Parameters.AddWithValue("Name", Textname.Text);
            //cmd.Parameters.AddWithValue("Rank", Textrank.Text);
            //cmd.Parameters.AddWithValue("Address", Textaddrs.Text);
            //cmd.Parameters.AddWithValue("Contact", Textcontact.Text);
            //cmd.Parameters.AddWithValue("Password", Textpasswd.Text);


            //cmd.ExecuteNonQuery();
            //string sql;
            // sql= 
            // SqlCommand cmd = new SqlCommand("insert into tb_register values("+Textid.Text+",'amit','psi','khed',123456,'abc')",con);
            SqlCommand cmd = new SqlCommand("insert into tbl_register values(@Id,@Name,@Rank,@Address,@Contact,@Emailid, @Password) ", con);
            cmd.Parameters.AddWithValue("@Id", Textid.Text);
            cmd.Parameters.AddWithValue("@Name", Textname.Text);
            cmd.Parameters.AddWithValue("@Rank", Textrank.Text);
            cmd.Parameters.AddWithValue("@Address", Textaddrs.Text);
            cmd.Parameters.AddWithValue("@Contact", Textcontact.Text);
            cmd.Parameters.AddWithValue("@Emailid", emailid.Text);
            cmd.Parameters.AddWithValue("@Password", Textpasswd.Text);

            cmd.ExecuteNonQuery();
            Textid.Text = "";
            Textname.Text = "";
            Textrank.Text = "";
            Textaddrs.Text = "";
            Textcontact.Text = "";
            emailid.Text = "";
            Textpasswd.Text = "";




            msg_lbl.Text = "User registered successfully";

            con.Close();

        }


    }
}
