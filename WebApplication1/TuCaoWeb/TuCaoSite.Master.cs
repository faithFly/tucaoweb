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
    public partial class TuCaoSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string userName = Request.QueryString["name"];
                if (Request.QueryString["name"] != null)
                {

                }
            }
        }

    }
}   