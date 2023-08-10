using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Hamilton
{
    public partial class GridViewPage : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
               
            //}
        }

        protected void buttonClick_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
            SqlCommand co = new SqlCommand("printOutput", con);
            con.Open();
            GridView1.DataSource = co.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    }
}