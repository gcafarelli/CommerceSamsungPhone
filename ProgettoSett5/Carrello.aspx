<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="ProgettoSett5.Carrello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">

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
       

        <div class="container principale">
            <h1>Carrello</h1>
            <div class="row align-items-center text-center">
                <div class="col-md-12 ">
                    <asp:Label ID="OggettoRimosso" runat="server" Text="" Visible="false"></asp:Label>
                     <asp:Repeater ID="RepeaterCarrello" ItemType="ProgettoSett5.Telefono" runat="server">
                        <itemtemplate>
                            <div class="col-6 boxProdotto text-center" style="margin:0 auto">
                                  <asp:Image ID="Image1" runat="server" ImageUrl="<%# Item.UrlImg %>" Width="200px" Height="250px"/>
                                <asp:Label ID="LabelIdTelefono" runat="server" Text="<%# Item.IdTelefono %>" Visible="false"></asp:Label>
                                <p><%# Item.Marca %></p>
                                <p><%# Item.Modello %></p>
                                <p>Totale: <%# Item.Prezzo %>€</p>
                            </div>
                            </div>
                        </itemtemplate>
                </asp:Repeater>
                    <div class="boxProdotto text-center">
                        <asp:Label ID="NumArticoli" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="TotaleCarrello" runat="server" Text=""></asp:Label>
                        </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
