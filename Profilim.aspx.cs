using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class Profilim : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();

        Ogrenciler user;
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
            user = connection.Ogrenciler.FirstOrDefault(x => x.Id == userId);

            if (!IsPostBack)
            {
                ogrAd.Text = user.OgrenciAdi;
                ogrSoyad.Text = user.OgrenciSoyadi;
                ogrNo.Text = user.OgrenciNo.ToString();
                ogrEposta.Text = user.EPosta;
                ogrTel.Text = user.Tel;
            }
        }

        protected void BilgileriGuncelle_Click(object sender, EventArgs e)
        {
            if (ogrEposta.Text != user.EPosta && ogrEposta.Text != "")
            {
                user.EPosta = ogrEposta.Text;
            }
            if (ogrTel.Text != user.Tel && ogrTel.Text != "")
            {
                user.Tel = ogrTel.Text;
            }
            connection.Entry(user).State = EntityState.Modified;

            connection.SaveChanges();
        }
    }
}