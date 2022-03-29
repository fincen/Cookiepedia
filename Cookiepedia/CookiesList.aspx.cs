using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookiepedia
{
    public partial class CookiesList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "New Cookie")
            {
                Response.Redirect("InsertCookie.aspx");
            }

            if (DropDownList1.SelectedValue == "Edit Cookie")
            {
                Response.Redirect("EditData.aspx");
            }
        }
    }
}