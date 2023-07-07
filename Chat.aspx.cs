using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class Chat1 : System.Web.UI.Page
    {
        StudentManagementEntities connection = new StudentManagementEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserId"] == null)
            {
                Response.Redirect("Index.aspx");
            }


            if (!IsPostBack)
            {
                InitHistory();
            }
        }
        private void InitHistory()
        {
            int userId = (int)Session["UserId"];
            var chat = connection.Chat.Include("Ogrenciler").ToList();

            if (chat.Count != 0)
            {
                List<string> messages = new List<string>();
                foreach (var item in chat)
                {
                    string msg;
                    if (item.Gonderen == 0 && item.Ogrenciler != null)
                    {
                        msg = item.Ogrenciler.OgrenciAdi + " " + item.Ogrenciler.OgrenciSoyadi + " : " + item.Message;
                    }
                    else
                    {
                        msg = "Öğretmen" + " : " + item.Message;
                    }
                    messages.Add(msg);
                }

                ChatHistory.Text = string.Join(Environment.NewLine, messages);
            }
        }



        protected void Send_Click1(object sender, EventArgs e)
        {
            Chat chat = new Chat();
            chat.Message = NewMessage.Text;
            chat.OgrenciId = (int)Session["UserId"];
            if (Session["RoleId"] == "Ogretmen")
            {
                chat.Gonderen = 1;
            }
            else
            {
                chat.Gonderen = 0;
            }
            connection.Chat.Add(chat);

            connection.SaveChanges();

            InitHistory();
        }

        protected void main_Click(object sender, EventArgs e)
        {
            if (Session["RoleId"] == "Ogretmen")
            {
                Response.Redirect("Dersler.aspx");
            }
            else
            {
                Response.Redirect("Derslerim.aspx");
            }
        }
    }
}