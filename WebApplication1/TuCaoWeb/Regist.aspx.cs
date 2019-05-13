using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuCaoBLL;
using TuCaoModel;

namespace TuCaoWeb
{
    public partial class Regist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click2(object sender, EventArgs e)
        {

        }
        protected void Button1_Click3(object sender, EventArgs e)
        {
            AdminIDModel admin = new AdminIDModel();
            admin.UserName = this.TextBox1.Text;
            admin.UserPassword = this.TextBox2.Text;
            admin.UserImg = this.Label5.Text;
            if (LoginBLL.Add(admin))
            {
                Response.Write("<script>alert('注册成功！')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('您注册的用户名已经有人使用了！')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string n = this.FileUpload1.FileName;
            this.FileUpload1.SaveAs(Server.MapPath(".") + "/lib/src/" + n);
            this.Label5.Text = n;
        }
    }
}