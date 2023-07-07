using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class DersKayit : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();

        int kullaniciId;
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
            kullaniciId = (int)Session["UserId"];
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void DataTumDersler_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                var dersId = Convert.ToInt32(DataTumDersler.SelectedRow.Cells[1].Text);
                OgrenciDersleri yeniTalep = new OgrenciDersleri();
                yeniTalep.OgrenciId = kullaniciId;
                yeniTalep.DersId = dersId;
                yeniTalep.Durum = 0;

                connection.OgrenciDersleri.Add(yeniTalep);
                connection.SaveChanges();
                BindGrid();

                string script = "Success();";
                ClientScript.RegisterStartupScript(this.GetType(), "success", script, true);
            }
            catch (Exception ex)
            {
                string script = "Error();";
                ClientScript.RegisterStartupScript(this.GetType(), "Error", script, true);
            }

        }

        private void BindGrid()
        {
            var tumDersler = connection.Dersler.Where(d => !connection.OgrenciDersleri.Any(od => od.DersId == d.Id && od.OgrenciId == kullaniciId)).ToList();
            DataTumDersler.DataSource = tumDersler;
            DataTumDersler.DataBind();

        }
    }
}