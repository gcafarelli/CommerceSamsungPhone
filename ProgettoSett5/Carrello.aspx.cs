using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgettoSett5
{
    public partial class Carrello : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double totale = 0;
            
            List<Telefono> Carello = (List<Telefono>)Session["ListaCarrello"];
            if(IsPostBack==false)
            {
                RepeaterCarrello.DataSource = Telefono.ListaCarrello;
                RepeaterCarrello.DataBind();
            }
            int articoliTot = Telefono.ListaCarrello.Count;
            foreach (Telefono tel in Telefono.ListaCarrello)
            {
                totale += tel.Prezzo;
            }

            if (Telefono.ListaCarrello.Count == 0)
            {
                TotaleCarrello.Text = "Lista Carrello Vuota";
            }
            else
            {
                NumArticoli.Text = $"Numero Articoli: {articoliTot}";
                TotaleCarrello.Text = $"Totale Carrello: {totale.ToString("c")}";
            }
        }
        

    }
}