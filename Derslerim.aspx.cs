using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class Derslerim : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            else if (Session["RoleId"] == "Ogretmen")
            {
                Response.Redirect("Dersler.aspx");
            }

            

            int userId = Convert.ToInt32(Session["UserId"]);
            var dersler = connection.Dersler.Where(d => d.OgrenciDersleri.Any(od => od.OgrenciId == userId && od.Durum == 1)).ToList();


            data.DataSource = dersler.ToList();
            data.DataBind();
        }
    }
}