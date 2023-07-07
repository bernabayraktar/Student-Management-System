using StudentManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class Ogrenciler1 : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }

        }

        private void BindGrid()
        {
            var ogrenciler = connection.Ogrenciler.ToList();
            var ogrenciVM = new List<OgrenciViewModel>();


            foreach (var o in ogrenciler)
            {
                OgrenciViewModel ogrenci = new OgrenciViewModel();
                ogrenci.OgrenciAdi = o.OgrenciAdi;
                ogrenci.OgrenciSoyadi = o.OgrenciSoyadi;
                ogrenci.OgrenciNo = o.OgrenciNo;
                ogrenci.EPosta = o.EPosta;
                ogrenci.Tel = o.Tel;

                ogrenciVM.Add(ogrenci);
            }
            DataOgrenciler.DataSource = ogrenciVM;
            DataOgrenciler.DataBind();
        }
    }
}