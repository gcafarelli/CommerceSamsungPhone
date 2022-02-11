using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgettoSett5
{
    public partial class Dettagli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int idProdottoSelezionato = Convert.ToInt32(Request.QueryString["IdTelefono"]);

            foreach (Telefono tel in Telefono.ListaTelefoni)
            {
                if (tel.IdTelefono == idProdottoSelezionato)
                {
                    Descrizione.Text = tel.Descrizione;
                    Marca.Text = tel.Marca;
                    Modello.Text = tel.Modello;
                    Processore.Text = tel.Processore;
                    Pollici.Text = Convert.ToString(tel.Pollici);
                    Prezzo.Text = Convert.ToString(tel.Prezzo);
                    Image2.ImageUrl = $"img/{tel.IdTelefono}.jpg";
                }
                
            }
            
        }

        protected void VaiAlCArrello_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carrello.aspx");
        }

        protected void TornaHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Aggiungi_Click(object sender, EventArgs e)
        {
            int idProdottoSelezionato = Convert.ToInt32(Request.QueryString["IdTelefono"]);
            foreach (Telefono tel in Telefono.ListaTelefoni)
            {
                if (tel.IdTelefono == idProdottoSelezionato)
                {
                    Telefono.ListaCarrello.Add(tel);
                    NotificaCarrello.Visible = true;
                    NotificaCarrello.ForeColor = System.Drawing.Color.Green;
                    NotificaCarrello.Text = $"Hai aggiunto {tel.Modello} al tuo carrello";
                }
            }
        }
    }
}