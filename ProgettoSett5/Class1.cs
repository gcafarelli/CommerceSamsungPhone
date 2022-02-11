using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProgettoSett5
{

    public class Telefono
    {
        private int _idTelefono;

        public int IdTelefono
        {
            get { return _idTelefono; }
            set { _idTelefono = value; }
        }


        private string _marca;

        public string Marca
        {
            get { return _marca; }
            set { _marca = value; }
        }

        private string _modello;

        public string Modello
        {
            get { return _modello; }
            set { _modello = value; }
        }

        private string _descrizione;

        public string Descrizione
        {
            get { return _descrizione; }
            set { _descrizione = value; }
        }

        private string _urlImg;

        public string UrlImg
        {
            get { return _urlImg; }
            set { _urlImg = value; }
        }


        private double _pollici;

        public double Pollici
        {
            get { return _pollici; }
            set { _pollici = value; }
        }

        private double _prezzo;

        public double Prezzo
        {
            get { return _prezzo; }
            set { _prezzo = value; }
        }

        private string _processore;

        public string Processore
        {
            get { return _processore; }
            set { _processore = value; }
        }

        public Telefono() { }

        public Telefono(int idTelefono, string marca, string modello, string processore, double pollici, double prezzo, string descrizione, string urlImg)
        {
            this._idTelefono = idTelefono;
            this._marca = marca;
            this._modello = modello;
            this._processore = processore;
            this._pollici = pollici;
            this._prezzo = prezzo;
            this._descrizione = descrizione;
            this._urlImg = urlImg;
            _listaTelefono.Add(this);
        }

        private static List<Telefono> _listaTelefono = new List<Telefono>();

        public static List<Telefono> ListaTelefoni
        {
            get { return _listaTelefono; }
            set { _listaTelefono = value; }
        }

        private static List<Telefono> _listaCarrello = new List<Telefono>();

        public static List<Telefono> ListaCarrello
        {
            get { return _listaCarrello; }
            set { _listaCarrello = value; }
        }

    }
}