<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dettagli.aspx.cs" Inherits="ProgettoSett5.Dettagli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="StyleSheet1.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title></title>
</head>
<body>
    < <form id="form1" runat="server">
        

        <div class="container-fluid xx text-center ">
         
            
            <nav class="navbar navbar-expand-lg ">
                <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png" style="height:10%; width:10%;"/>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link mx-5" href="Default.aspx">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link mx-5" href="Carrello.aspx">Carrello</a>
                  </li>
                 <li class="nav-item">
                    <a class="nav-link mx-5" href="Dettagli.aspx?idTelefono=1">S21+</a>
                  </li>
                    <li class="nav-item mx-5">
                    <a class="nav-link" href="Dettagli.aspx?idTelefono=2">Note 9</a>
                   </li>
                    <li class="nav-item mx-5">
                    <a class="nav-link" href="Dettagli.aspx?idTelefono=3">S20 FE</a>
                    </li>
                </ul>
              </div>
            </nav>
           </div>
       <div class="container-fluid header">
            <div class="row text-center">
                   <h2 style="color: antiquewhite; font-size:20px;">Finanziamento Tasso Zero | Paga in 3 rate con la tua carta | Acquista ora, paghi dopo, senza interessi</h2>
            </div>
        </div>
 
            <div class="row align-items-center text-center"style="margin-top:20px;">
                <div class="col-2"></div>

                <div class="col-md-8 mainDettagli">
                    <asp:Label ID="NotificaCarrello" runat="server" Text="" Visible="false"></asp:Label><br />
                    <asp:Image Style="width:300px; height:400px;" ID="Image2" runat="server" />
                    <hr />
                    Marca: 
                    <asp:Label ID="Marca" runat="server" Text=""></asp:Label><br />
                    <hr />
                    Modello: 
                    <asp:Label ID="Modello" runat="server" Text=""></asp:Label><br />
                    <hr />
                    Processore: 
                    <asp:Label ID="Processore" runat="server" Text=""></asp:Label><br />
                    <hr />
                    Pollici: 
                    <asp:Label ID="Pollici" runat="server" Text=""></asp:Label><br />
                    <hr />
                    Prezzo:  
                    <asp:Label ID="Prezzo" runat="server" Text=""></asp:Label>€<br />
                    <hr />
                    Descrizione: 
                    <asp:Label ID="Descrizione" runat="server" Text=""></asp:Label><br />
                    <hr />
                    
                    <asp:Button CssClass="btn btn-lg btn-primary  my-3 botdet " ID="Aggiungi" runat="server" Text="Aggiungi Al Carrello" OnClick="Aggiungi_Click"/><br />
                    <asp:Button CssClass="btn btn-lg btn-primary my-3 botdet" ID="TornaHome" runat="server" Text="Torna Alla Home" OnClick="TornaHome_Click"/><br />
                    <asp:Button CssClass="btn btn-lg btn-primary my-3 botdet" ID="VaiAlCArrello" runat="server" Text="Vai Al Carrello" OnClick="VaiAlCArrello_Click" />
                </div>
            </div>
    </form>
</body>
</html>
