using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TuCaoWeb
{
    public partial class NewWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //为repeater绑定数据源
                this.Repeater1.DataSource = TuCaoBLL.WordBLL.GetWord();
                this.Repeater1.DataBind();
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
           string n=Request.QueryString["name"];
           if (n==null)
           {
                Response.Redirect("Add.aspx");
           }
           else
           {
               Response.Redirect("Add.aspx?name=" + n);
           }
           
        }

        protected void Unnamed_ServerClick1(object sender, EventArgs e)
        {
            //为repeater绑定数据源
            this.Repeater1.DataSource = TuCaoBLL.WordBLL.GetWord();
            this.Repeater1.DataBind();
        }

        protected void Unnamed_ServerClick2(object sender, EventArgs e)
        {
            //根据时间排序段子
            this.Repeater1.DataSource = TuCaoBLL.WordBLL.GetWordByGood();
            this.Repeater1.DataBind();
        }

        protected void Unnamed_ServerClick3(object sender, EventArgs e)
        {
            //根据段子发送的时间排序段子
            this.Repeater1.DataSource = TuCaoBLL.WordBLL.GetWordByTime();
            this.Repeater1.DataBind();
        }
    }
}