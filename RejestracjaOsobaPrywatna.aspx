<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RejestracjaOsobaPrywatna.aspx.cs" Inherits="RejestracjaOsobaPrywatna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>PracujeSię.pl</title>
    <link href="Content/Style.css" rel="stylesheet" type="text/css" />
    <link href="Content/MenuButtons.css" rel="stylesheet" type="text/css" />
    <link href="Content/MenuButtons2.css" rel="stylesheet" type="text/css" />
    <link href="Content/MenuButtons3.css" rel="stylesheet" type="text/css" />
    <link href="Content/Rejestracja.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="containerTop">
         <a href="Default.aspx">
               <div class="topLogo">
                   <img src="Img/logo.png" />
               </div>
              </a>
             <div class="topInscription">
                   
                   Praca i oferty pracy na Pracujesie.pl
               </div>
            <div class="topButtons">
                <div class="myButton6">Rejestracja</div>
                <div class="myButton6">Zaloguj</div>
            </div>
            <div style="clear:both;"></div>
         </div>

         <div class="menuHorizontalStrip">
            <div class="containerMenu">
                <div class="myButton">Oferty pracy</div>
                 <div class="myButton">Katalog pracodawców</div>
                 <div class="myButton">Porady</div>
                 <div class="myButton">Testy kompetencyjne</div>
                 <div class="myButton2">Dla pracodawców</div>
            </div>
        </div>

          <div class="registerBoxOF">
              <div class="registerText">
              W celu zarejestrowania się na portalu pracujesie.pl proszę uzupełnić poniższe pola i kliknąć przycisk "Zarejestruj".
                  </div>
            <div class="searchCol1">
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="textField" placeholder="Wpisz imię"></asp:TextBox><br />
                 <asp:TextBox ID="TextBox2" runat="server" CssClass="textField" placeholder="Wpisz nazwisko"></asp:TextBox><br />
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="textField" placeholder="Wpisz email"></asp:TextBox><br />
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="textField" placeholder="Potwierdż email"></asp:TextBox><br />
                 <asp:TextBox ID="TextBox5" runat="server" CssClass="textField" placeholder="Wpisz hasło"></asp:TextBox><br />
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="textField" placeholder="Potwierdż hasło"></asp:TextBox><br />
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="textField" placeholder="Wpisz stolicę Polski z dużej litery"></asp:TextBox><br /><br />
             
                 <asp:Button ID="Button1" runat="server" Text="Zarejestruj" OnClick="Register_Click" CssClass="myButton5" />
            </div>
            <div class="searchCol2">
                  
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                  
            </div>
            
        </div>
          <div style="clear:both;"></div>
    </form>
</body>
</html>
