<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PracujeSię.pl</title>
    <link href="Content/Style.css" rel="stylesheet" type="text/css" />
    <link href="Content/MenuButtons.css" rel="stylesheet" type="text/css" />
    <link href="Content/MenuButtons2.css" rel="stylesheet" type="text/css" />
    <link href="Content/MenuButtons3.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   
    
        <div class="containerTop">
            <a href="Default.aspx"><div class="topLogo">
                   <img src="Img/logo.png" />
               </div>
                </a>
             <div class="topInscription">
                   
                   Praca i oferty pracy na Pracujesie.pl
               </div>
            <div class="topButtons">
               <a href="Rejestracja.aspx"> <div class="myButton6">Rejestracja</div></a>
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

        <div class="searchBox">
            <div class="searchCol1">
                <input type="text" name="category" id="searchField" placeholder="Wpisz kategorie"><br />
                    <div class="myButton5">Wybierz kategorię</div>
            </div>
             <div class="searchCol2">
                 <input type="text" name="location" id="searchField" placeholder="Wpisz lokalizacje"><br />
                     <div class="myButton5">Wybierz lokalizację</div>
            </div>
              <div class="searchCol3">
                  <img src="Img/sbtn.png" id="sbtn"/>
            </div>
        </div>
          <div style="clear:both;"></div>
        <div class="containerMain">
            NAJNOWSZE OFERTY PRACY
     
        <div class="jobOffersBox">
            <!--
           <div class="jobOfferRow">
               <div class="jobTitle">
                   Pracownik produkcji
               </div>
                <div class="jobCategory">
                    Produkcja
               </div>
           </div>

              <div class="jobOfferRow">
               <div class="jobTitle">
                   Pracownik prod   
               </div>
                <div class="jobCategory">
                    Produkcja
               </div>
           </div>
             
             <asp:GridView ID="GridView1" runat="server" GridLines="Horizontal" Width="100%"  ShowHeader="False"  >
                 <Columns>
                     <asp:CheckBoxField />
                 </Columns>
            </asp:GridView>
                -->

               <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false"
        OnRowDataBound="GridView3_RowDataBound" OnSelectedIndexChanged = "OnSelectedIndexChanged" Width="100%" ShowHeader="False" GridLines="Horizontal" CellPadding="15" AllowPaging="True" OnPageIndexChanging="GridView3_PageIndexChanging" >
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
 				<Columns>
					<asp:BoundField DataField="id" HeaderText="id" />
					<asp:BoundField DataField="JobTitle" HeaderText="Tytuł" />
					<asp:BoundField DataField="JobCategory" HeaderText="Kategoria" />

                     <asp:ButtonField Text="" CommandName="Select" ItemStyle-Width="5"  >
                    <ItemStyle Width="5px"></ItemStyle>
                    </asp:ButtonField>
                 
				</Columns>
                   <RowStyle Height="40px" VerticalAlign="Middle" Wrap="True" />
       </asp:GridView>
        <br />
        <asp:Label ID="msg" runat="server" Text=""></asp:Label>


        </div>

       </div>
      <div class="bottomText">
          OFERTY PRACY WEDŁUG BRANŻ
      </div>

        <div class="bottomContainer">
            <div class="bottomColumn">
                 <ul>
            <a href="#"><li>Wszystkie kategorie</li></a>
            <a href="#"><li>Administracja biurowa</li></a>
            <a href="#"><li>Badania i rozwój</li></a>
            <a href="#"><li>Bankowość</li></a>
            <a href="#"><li>BHP/Ochrona środowiska</li></a>
            <a href="#"><li>Budownictwo</li></a>
            <a href="#"><li>Call Center</li></a>
            <a href="#"><li>Doradztwo / Consulting</li></a>
            <a href="#"><li>Edukacja / Szkolenia</li></a>
            <a href="#"><li>Energetyka</li></a>
            <a href="#"><li>Finanse / Ekonomia</li></a>
            <a href="#"><li>Franczyza / Własny biznes</li></a>
            </ul>
         

            </div>
            <div class="bottomColumn">
                  <ul>
            <a href="#"><li>Wszystkie kategorie</li></a>
            <a href="#"><li>Administracja biurowa</li></a>
            <a href="#"><li>Badania i rozwój</li></a>
            <a href="#"><li>Bankowość</li></a>
            <a href="#"><li>BHP/Ochrona środowiska</li></a>
            <a href="#"><li>Budownictwo</li></a>
            <a href="#"><li>Call Center</li></a>
            <a href="#"><li>Doradztwo / Consulting</li></a>
            <a href="#"><li>Edukacja / Szkolenia</li></a>
            <a href="#"><li>Energetyka</li></a>
            <a href="#"><li>Finanse / Ekonomia</li></a>
            <a href="#"><li>Franczyza / Własny biznes</li></a>
            </ul>
            </div>
            <div class="bottomColumn">
                   <ul>
            <a href="#"> <li>Wszystkie kategorie</li></a>
            <a href="#"><li>Administracja biurowa</li></a>
            <a href="#"><li>Badania i rozwój</li></a>
            <a href="#"><li>Bankowość</li></a>
            <a href="#"><li>BHP/Ochrona środowiska</li></a>
            <a href="#"><li>Budownictwo</li></a>
            <a href="#"><li>Call Center</li></a>
            <a href="#"><li>Doradztwo / Consulting</li></a>
            <a href="#"><li>Edukacja / Szkolenia</li></a>
            <a href="#"> <li>Energetyka</li></a>
            <a href="#"><li>Finanse / Ekonomia</li></a>
            <a href="#"> <li>Franczyza / Własny biznes</li></a>
            </ul>
            </div>
        </div>

       <div class="bottomText2">
          Copyright © 20015 - 2016 pracujesie.pl.  All rights reserved.
      </div>


       


     


       


    </form>
</body>
</html>
