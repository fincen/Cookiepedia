using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookiepedia
{
    public partial class DataSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void frmCatalogue_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            txtKunci.Text = e.Values["Name"].ToString();
            gvCatalogue.DataBind();
        }
        protected void btnCari_Click(object sender, EventArgs e)
        {
            gvCatalogue.Visible = true;
        }
    }
}