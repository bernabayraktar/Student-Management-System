using StudentManagement.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class TalepYonetim : System.Web.UI.Page
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

        private void BindGrid()
        {
            var talepler = connection.OgrenciDersleri.Where(od => od.Durum == 0).ToList();
            var talepYonetim = new List<TalepYonetimViewModel>();
            foreach (var t in talepler)
            {
                TalepYonetimViewModel talepYonetimViewModel = new TalepYonetimViewModel();
                talepYonetimViewModel.Id = t.Id;
                talepYonetimViewModel.OgrenciAdi = t.Ogrenciler.OgrenciAdi;
                talepYonetimViewModel.OgrenciSoyadi = t.Ogrenciler.OgrenciSoyadi;
                talepYonetimViewModel.OgrenciNo = t.Ogrenciler.OgrenciNo;
                talepYonetimViewModel.DersKodu = t.Dersler.DersKodu;
                talepYonetimViewModel.DersAdi = t.Dersler.DersAdi;

                talepYonetim.Add(talepYonetimViewModel);
            }

            DataTalepYonetim.DataSource = talepYonetim;
            DataTalepYonetim.DataBind();
        }

        protected void DataTalepYonetim_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label.Text = DataTalepYonetim.SelectedRow.Cells[1].Text;
            OgrAd.Text = DataTalepYonetim.SelectedRow.Cells[2].Text;
            OgrSoyad.Text = DataTalepYonetim.SelectedRow.Cells[3].Text;
            OgrNo.Text = DataTalepYonetim.SelectedRow.Cells[4].Text;
            DersKodu.Text = DataTalepYonetim.SelectedRow.Cells[5].Text;
            DersAdi.Text = DataTalepYonetim.SelectedRow.Cells[6].Text;
        }

        protected void Onayla_Click(object sender, EventArgs e)
        {
            var selected = Convert.ToInt32(Label.Text);

            
            var talep = connection.OgrenciDersleri.FirstOrDefault(od => od.Id == selected);
            if (talep == null)
            {
                string script = "Fail();";
                ClientScript.RegisterStartupScript(this.GetType(), "Fail", script, true);
                return;
            }
            talep.Durum = 1;
            connection.OgrenciDersleri.AddOrUpdate(talep);
            connection.SaveChanges();

            BindGrid();
            string script2 = "Success('Onaylandı');";
            ClientScript.RegisterStartupScript(this.GetType(), "Success", script2, true);
        }

        protected void Reddet_Click(object sender, EventArgs e)
        {
            var selected = Convert.ToInt32(Label.Text);

            var talep = connection.OgrenciDersleri.FirstOrDefault(od => od.Id == selected);
            if (talep == null)
            {
                string script = "Fail();";
                ClientScript.RegisterStartupScript(this.GetType(), "Fail", script, true);
                return;
            }
            talep.Durum = 2;
            connection.OgrenciDersleri.AddOrUpdate(talep);
            connection.SaveChanges();

            BindGrid();

            string script2 = "Error('Reddedildi');";
            ClientScript.RegisterStartupScript(this.GetType(), "Error", script2, true);
        }
    }
}