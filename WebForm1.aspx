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
        <h1>Faradays Renting and Used Cars</h1>
        <aside>
            <ul>
                <nav>
                    <li>Inicio</li>
                    <li>Last Minute</li>
                    <li>Hot Deals</li>
                </nav>
            </ul>
        </aside>

        <form id="form1" runat="server">
            <asp:XmlDataSource runat="server" ID="XmlDataSource2" DataFile="~/data/faradayCar.xml" TransformFile="~/data/faradaysCar.xslt" ></asp:XmlDataSource>
            <asp:GridView runat="server" ID="gridEAC" AutoGenerateColumns="False" DataSourceID="XmlDataSource2">
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
