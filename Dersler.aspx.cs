using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class Dersler1 : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            else if (Session["RoleId"] == "Ogrenci")
            {
                Response.Redirect("Derslerim.aspx");
            }

            if (!IsPostBack)
            {
                BindGrid();
            }

        }

        protected void Ders_Ekle_Click(object sender, EventArgs e)
        {
            Dersler dersler = new Dersler();
            dersler.DersAdi = DersAdi.Text;
            dersler.DersKodu = DersKodu.Text;

            connection.Dersler.Add(dersler);
            connection.SaveChanges();

            DersKodu.Text = "";
            DersAdi.Text = "";
            BindGrid();
        }

        private void BindGrid()
        {
            var tumDersler = connection.Dersler.ToList();
            tblDersler.DataSource = tumDersler;
            tblDersler.DataBind();


        }
    }
}