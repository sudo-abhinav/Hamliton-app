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
    public partial class _default : System.Web.UI.Page
    {
         SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    button1_Click();
            //}
        }


        protected void button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConString"].ConnectionString);

            string query = "insertData";
            SqlCommand com = new SqlCommand(query, con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@FisrtName", textbox1.Value.ToString());/*because here i am using textbox so i have to use text*/
            com.Parameters.AddWithValue("@LastName", textbox2.Value.ToString()); /*because here i am using input so i have to use value*/
            com.Parameters.AddWithValue("@Address", textbox3.Value.ToString());
            com.Parameters.AddWithValue("@phoneNO", textbox5.Value.ToString());
            com.Parameters.AddWithValue("@salary", textbox4.Value);

            con.Open();
            com.ExecuteNonQuery();
            con.Close();

            label1.Text = "data inserted";
            //datacheck();
            
        }

        //private void datacheck()
        //{
        //    if (textbox5.Value.Length <=9)
        //    {
        //        //numbertest.text = ;
        //        label1.Text = "Enter correct Number";
        //    }
        //}
    }
}