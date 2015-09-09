using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RejestracjaOsobaPrywatna : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void registerClick()
    {
        Label1.Text = "ok";
    }



    protected void Register_Click(object sender, EventArgs e)
    {
        Insert();
        Label1.Text = "ok";
    }

    public void Insert()
    {
        string CS = "Server=LENOVO-PC;Integrated security=SSPI;database=Pracujesie;";
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd = new SqlCommand("Insert into OFUsers (name, surname, email, pass) values ('Jan', 'Kowalski', 'test','haslo')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
       
    }
}