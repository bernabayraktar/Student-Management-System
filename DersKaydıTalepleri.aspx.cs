using StudentManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class DersKaydıTalepleri : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();
        int ogrenciId;
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

            ogrenciId = (int)Session["UserId"];

            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            var taleplerim = connection.OgrenciDersleri.Where(od => od.OgrenciId == ogrenciId).ToList();
            var taleplerimVM = new List<KayitTalepViewModel>();

            foreach (var t in taleplerim)
            {
                KayitTalepViewModel kayitTalepViewModel = new KayitTalepViewModel();
                kayitTalepViewModel.DersAdi = t.Dersler.DersAdi;
                kayitTalepViewModel.DersKodu = t.Dersler.DersKodu;

                switch (t.Durum)
                {
                    case 0:
                        kayitTalepViewModel.Durum = "Onay Bekliyor...";
                        break;
                    case 1:
                        kayitTalepViewModel.Durum = "Onaylandı";
                        break;
                    case 2:
                        kayitTalepViewModel.Durum = "Reddedildi";
                        break;
                }

                taleplerimVM.Add(kayitTalepViewModel);
            }
            DataKayitDurum.DataSource = taleplerimVM;
            DataKayitDurum.DataBind();


        }
    }
}