using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Hamilton
{
    public partial class repeaterPage : System.Web.UI.Page
    {
        SqlConnection con;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindRepeater();
                //buttonClick_Click();
            }
        }
        private void bindRepeater()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);
            SqlCommand co = new SqlCommand("printOutput", con);
            con.Open();
            rpt1.DataSource = co.ExecuteReader();
            rpt1.DataBind();
            con.Close();
        }

        protected void buttonClick_Click(object sender, EventArgs e)
        {
            bindRepeater();

        }
    }
}