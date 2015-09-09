using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    private object style;
 
    protected void Page_Load(object sender, EventArgs e)
    {

        LoadGrid();
    


    }

    public void LoadGrid() {
        //string CS = "Server=LENOVO-PC;Integrated security=SSPI;database=Pracujesie;";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Select * from JobOffers", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables.Count > 0)
        {
            GridView3.DataSource = ds.Tables[0];
            GridView3.AllowPaging = true;
            GridView3.DataBind();
        }
        GridView3.Columns[0].Visible = false;
        con.Close();
    }

   

    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#8add66'; this.style.cursor='pointer'";
            e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
            e.Row.ToolTip = "Click last column for selecting this row.";
            // e.Row.Attributes.Add("onclick", Page.ClientScript.GetPostBackEventReference(GridView3, "Select$" + e.Row.RowIndex.ToString()));
            e.Row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(this.GridView3, "Select$" + e.Row.RowIndex);

        }
    }
    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
        string pName = GridView3.SelectedRow.Cells[1].Text;
        msg.Text = "<b>Publisher Name  &nbsp;:&nbsp;&nbsp;   " + pName + "</b>";
    }

    protected void PeopleGridView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#ececee'; this.style.cursor='pointer'";
            e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
            e.Row.ToolTip = "Click last column for selecting this row.";
            // e.Row.Attributes.Add("onclick", Page.ClientScript.GetPostBackEventReference(GridView3, "Select$" + e.Row.RowIndex.ToString()));
            e.Row.Attributes["onclick"] = ClientScript.GetPostBackClientHyperlink(this.GridView3, "Select$" + e.Row.RowIndex);

        }
    }



   

    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView3.PageIndex = e.NewPageIndex;
        LoadGrid();
    }
}