<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rejestracja.aspx.cs" Inherits="Rejestracja" %>

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

          <div class="registerBox">
              <center>
                <a href="RejestracjaOsobaPrywatna.aspx"><div class="myButton7"><div class="myButton7Text">Osoba prywatna</div></div></a>
                <div class="myButton7"><div class="myButton7Text">Firma</div></div>
                  </center>
            <div class="searchCol1">
                 
            </div>
            <div class="searchCol2">
                  
            </div>
            
        </div>
          <div style="clear:both;"></div>



    </form>
</body>
</html>
