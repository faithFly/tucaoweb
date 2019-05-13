using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using TuCaoBLL;
using TuCaoModel;
namespace TuCaoWeb
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
                
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
          
                if (Request.QueryString["name"] == null)
                {
                    Response.Write("<script>alert('请先登录!')</script>");
                }
                  else
                  {
                    string n=this.TextArea1.InnerText;
                      if (n=="")
                      {
                          Response.Write("<script>alert('请输入你要投递的段子！')</script>");
                      }
                      else
                      {
                          AdminIDModel mod = new AdminIDModel();
                          mod.UserName = Request.QueryString["name"];
                          DataTable dt = new DataTable();
                          dt = TuCaoBLL.WordBLL.GetWordName(mod);
                          WordModel m = new WordModel();
                          m.UserId = int.Parse(dt.Rows[0][0].ToString());
                          m.UserName = Request.QueryString["name"];
                          m.Word = this.TextArea1.InnerText;
                          m.WordImg = this.Label3.Text;
                          m.WordDateTime = DateTime.Now;

                          if (WordBLL.AddWord(m))
                          {
                              Response.Redirect("NewWeb.aspx?name=" + mod.UserName);
                          }
                          else
                          {
                              Response.Write("<script>alert('添加失败')</script>");
                          }
                      }
                    
                    }
                    
        
          
           
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string n = this.FileUpload1.FileName;
            this.Label3.Text = n;
            this.FileUpload1.SaveAs(Server.MapPath(".") + "/lib/src/" + n);
        }

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            string n = Request.QueryString["name"];
            Response.Redirect("NewWeb.aspx?name=" + n);
        }
    }
}