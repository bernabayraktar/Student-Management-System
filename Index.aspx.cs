using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace StudentManagement
{
    public partial class Index : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                if (Session["RoleId"] == "Ogrenci")
                {
                    Response.Redirect("Derslerim.aspx");
                }
                else
                {
                    Response.Redirect("Dersler.aspx");
                }
            }

        }

        protected void LogIn_Click(object sender, EventArgs e)
        {
            int userNo;
            // Convert.ToInt32((UserName.Text));
            if (int.TryParse(UserName.Text , out userNo))
            {
                var user = connection.Ogrenciler.FirstOrDefault(x => x.OgrenciNo == userNo && x.Sifre.Equals(Password.Text));
                if (user != null)
                {
                    Session["UserId"] = user.Id;
                    Session["RoleId"] = "Ogrenci";

                    string script = "success();";
                    ClientScript.RegisterStartupScript(this.GetType(), "success", script, true);

                    Response.Redirect("Derslerim.aspx");
                }
            }

           
            var user2 = connection.Ogretmen.FirstOrDefault(x => x.KullaniciAdi.Equals(UserName.Text) && x.Sifre.Equals(Password.Text));
            if (user2 != null)
            {
                Session["UserId"] = user2.Id;
                Session["RoleId"] = "Ogretmen";

                string script = "success();";
                ClientScript.RegisterStartupScript(this.GetType(), "success", script, true);

                Response.Redirect("Dersler.aspx");
            }


        }
    }
}