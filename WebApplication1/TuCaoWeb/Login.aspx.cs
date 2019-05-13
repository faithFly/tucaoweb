using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuCaoModel;
using TuCaoBLL;
namespace TuCaoWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
   
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            AdminIDModel admin = new AdminIDModel();
            admin.UserName = this.TextBox1.Text;
            admin.UserPassword = this.TextBox2.Text;
            if (LoginBLL.LoginId(admin.UserName, admin.UserPassword))
            {
                Session["name"] = this.TextBox1.Text;
                Response.Redirect("NewWeb.aspx?name=" + admin.UserName);
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误！')</script>");
            }
        }


        


       

    }
}