using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace Sifreleme
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ad = txtAd.Text;
            byte[] veridizim1 = ASCIIEncoding.ASCII.GetBytes(ad);
            string sifreliAd = Convert.ToBase64String(veridizim1);
            string soyad = txtSoyad.Text;
            byte[] veridizim2 = ASCIIEncoding.ASCII.GetBytes(soyad);
            string sifreliSoyad = Convert.ToBase64String(veridizim2);

            string telefon = txtTel.Text;
            byte[] veridizim3 = ASCIIEncoding.ASCII.GetBytes(telefon);
            string sifreliTelefon = Convert.ToBase64String(veridizim3);

            lbl1.Text = sifreliAd;
            lbl2.Text = sifreliSoyad;
            lbl3.Text = sifreliTelefon;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string metincozAd = txtAd.Text;
            byte[] veridizimcozulen1 = Convert.FromBase64String(metincozAd);
            string ad = ASCIIEncoding.ASCII.GetString(veridizimcozulen1);

            string metincozSoyad = txtSoyad.Text;
            byte[] veridizimcozulen2 = Convert.FromBase64String(metincozSoyad);
            string soyad = ASCIIEncoding.ASCII.GetString(veridizimcozulen2);

            string metincozTelefon = txtTel.Text;
            byte[] veridizimcozulen3 = Convert.FromBase64String(metincozTelefon);
            string telefon = ASCIIEncoding.ASCII.GetString(veridizimcozulen3);

            lbl1.Text = ad;
            lbl2.Text = soyad;
            lbl3.Text = telefon;
        }
    }
}