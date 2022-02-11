<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProgettoSett5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="StyleSheet1.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title></title>
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
            <div class="row align-items-center text-center">
                <asp:Repeater ID="Repeater1" ItemType="ProgettoSett5.Telefono" runat="server">
                    <ItemTemplate>
                        <div class="boxProdotto col-4">
                            <asp:Label CssClass="imgMain" ID="LabelIdTelefono" runat="server" Text="<%# Item.IdTelefono %>" Visible="false"></asp:Label>
                            <asp:Image ID="Image2" runat="server" ImageUrl="<%# Item.UrlImg %>" Width="200px" Height="250px"/>
                            <p><%# Item.Marca %></p>
                            <p style="font-size:25px; font-weight:bold;"><%# Item.Modello %></p>
                            <p>Prezzo: <%# Item.Prezzo %>€</p>
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Dettagli Prodotto" OnClick="Button1_Click" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
</body>
</html>
