<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Eac_Ejercicio3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eac 1</title>
</head>
<body>
    <form id="form1" runat="server">

        <!--<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="XMLFile1.xml" TransformFile="Faraday2.xslt"></asp:XmlDataSource>-->

        <label>HOLA TU</label>

        <asp:XmlDataSource runat="server" ID="XmlDataSource2" DataFile="~/data/faradayCar.xml"></asp:XmlDataSource>
        <asp:GridView runat="server" ID="gridEAC" AutoGenerateColumns="False" DataSourceID="XmlDataSource2">
            <Columns>
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca"></asp:BoundField>
            </Columns>
        </asp:GridView>

    </form>
</body>

</html>
