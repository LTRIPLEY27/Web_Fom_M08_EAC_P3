<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Eac_Ejercicio3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eac 1</title>
    <link href="view/style.css"" rel="stylesheet"/>
</head>
<body>
    <main>

        <!--MENU-HORIZONTAL-->
        <ul id ="float">
          <li class ="menu"><a href="#home">Home</a></li>
          <li  class ="menu"><a href="#news">Deals</a></li>
          <li  class ="menu"><a href="#contact">Contact</a></li>
          <li  class ="menu"><a href="#about">About</a></li>
        </ul>

        <h1>Faradays Renting and Used Cars</h1>
        <aside>
            <ul id="nav">
                <nav>
                    <li class ="floating">Inicio</li>
                    <li class ="floating">Last Minute</li>
                    <li class ="floating">Hot Deals</li>
                </nav>
            </ul>

            <div class="gallery">
              <a target="_blank" href="/img/fordt.PNG">
                <img src="/img/fordt.PNG" alt="Ford T" width="600" height="400">
              </a>
              <div class="desc">The Iconic Ford T</div>
            </div>
            <div class="gallery">
              <a target="_blank" href="/img/citroenDS.PNG">
                <img src="/img/citroenDS.PNG" alt="Citroen DS" width="600" height="400">
              </a>
              <div class="desc">The Vanguard car</div>
            </div>
        </aside>

        


        <form id="form1" runat="server">
            <p id ="subtitle">The Best Prices on Market !!!</p>


            <asp:XmlDataSource runat="server" ID="XmlDataSource2" DataFile="~/data/faradayCar.xml" TransformFile="~/data/faradaysCar.xslt" ></asp:XmlDataSource>
            <asp:GridView runat="server" ID="gridEAC" AutoGenerateColumns="False" DataSourceID="XmlDataSource2" AllowPaging="True" BackColor="White" BorderStyle="Solid" AlternatingRowStyle-BorderStyle="Solid" EditRowStyle-BorderStyle="NotSet" EmptyDataRowStyle-BorderStyle="Dashed" Font-Bold="True" Font-Size="20px" GridLines="Both" HeaderStyle-BorderStyle="Ridge" HeaderStyle-BackColor="#00CC00" HeaderStyle-BorderColor="#003366" RowStyle-ForeColor="#006699" SelectedRowStyle-BorderStyle="None">
                <Columns>
                    <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo"></asp:BoundField>
                    <asp:BoundField DataField="categoria" HeaderText="Categoria" SortExpression="categoria"></asp:BoundField>
                    <asp:BoundField DataField="version" HeaderText="Version" SortExpression="version"></asp:BoundField>
                    <asp:BoundField DataField="precio_venta" HeaderText="Precio" SortExpression="precio_venta"></asp:BoundField>
                    <asp:BoundField DataField="any" HeaderText="Año" SortExpression="any"></asp:BoundField>
                </Columns>
            </asp:GridView>
        </form>
        
    </main>
</body>
</html>
