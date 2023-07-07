using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentManagement.Models
{
    public class TalepYonetimViewModel
    {
        public int Id { get; set; }
        public string OgrenciAdi { get; set; }
        public string OgrenciSoyadi { get; set; }
        public int OgrenciNo { get; set; }
        public string DersKodu { get; set; }
        public string DersAdi { get; set; } 
    }
}