<%@ Page Language="C#"   AutoEventWireup="true" CodeFile="Zakazivanje.aspx.cs" Inherits="Zakazivanje" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 845px;
            width: 677px;
            margin-left: 531px;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #800080;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            width: 668px;
            background-color: #FFFFFF;
            height: 112px;
        }
        .auto-style4 {
            height: 190px;
            width: 538px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            width: 668px;
            height: 190px;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 538px;
            height: 109px;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            width: 668px;
            height: 109px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            width: 538px;
            height: 64px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            width: 668px;
            height: 64px;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            width: 668px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style13 {
            width: 538px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 538px;
            height: 89px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style16 {
            width: 668px;
            height: 89px;
            background-color: #FFFFFF;
        }
        .auto-style17 {
            width: 538px;
            text-align: center;
            background-color: #FFFFFF;
            height: 112px;
        }
        .auto-style18 {}
          .pozadina {
             background-image: url("High-Resolution-Cool-Abstract-Flower-Wallpaper.jpg"); 
        }
    </style>
</head>
<body class="pozadina" style="height: 658px">
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="menu">
               <ul>

                <li class="navigation_first_item"><a href="index.aspx">Home</a></li>
                   <li><a href="O nama.aspx">O nama</a></li>
                   <li><a href="Usluge.aspx">Usluge</a></li>
                   
                   <li><a href ="index.aspx">Log off</a></li>

               </ul>
             </div>
            </div>
        <div class="auto-style1">
             <div class="container shadow  ">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Zakažite Vaš termin" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <table ="center" class="auto-style2" border="1" style="border: thick groove #000000">
                <tr>
                    <td class="auto-style13"><strong><em>Upišite Vaše Ime</em></strong></td>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong><em>Izaberite datum</em></strong></td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="auto-style14">
                        <asp:Calendar ID="Calendar1" runat="server" CssClass="auto-style6" Width="200px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong><em>
                        <br />
                        Izaberite vreme</em></strong><br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style3">
                        <br />
                        <strong><em>Početak</em></strong>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>10:00AM</asp:ListItem>
                            <asp:ListItem>11:00AM</asp:ListItem>
                            <asp:ListItem>12:00PM</asp:ListItem>
                            <asp:ListItem>13:00PM</asp:ListItem>
                            <asp:ListItem>14:00PM</asp:ListItem>
                            <asp:ListItem>15:00PM</asp:ListItem>
                            <asp:ListItem>16:00PM</asp:ListItem>
                            <asp:ListItem>17:00PM</asp:ListItem>
                            <asp:ListItem>18:00PM</asp:ListItem>
                            <asp:ListItem>19:00PM</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
&nbsp;<strong><em>Kraj</em></strong>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>11:00AM</asp:ListItem>
                            <asp:ListItem>12:00PM</asp:ListItem>
                            <asp:ListItem>13:00PM</asp:ListItem>
                            <asp:ListItem>14:00PM</asp:ListItem>
                            <asp:ListItem>15:00PM</asp:ListItem>
                            <asp:ListItem>16:00PM</asp:ListItem>
                            <asp:ListItem>17:00PM</asp:ListItem>
                            <asp:ListItem>18:00PM</asp:ListItem>
                            <asp:ListItem>19:00PM</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="60px" Text="Proverite raspoloživost" Width="163px" OnClick="Button1_Click1" CssClass="auto-style18" Font-Bold="True" Font-Italic="True" Font-Names="Arial" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong><em>Izaberite radnika</em></strong></td>
                    <td class="auto-style16">
                        <asp:Label ID="Label3" runat="server" BorderColor="#993366" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <div class="auto-style14">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial" DataSourceID="SqlDataSource3" DataTextField="Ime" DataValueField="RadnikId">
                            <asp:ListItem>Šišanje</asp:ListItem>
                            <asp:ListItem>Feniranje</asp:ListItem>
                            <asp:ListItem>Farbanje</asp:ListItem>
                            <asp:ListItem>Izvlačenje pramenova</asp:ListItem>
                        </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [RadnikId], [Ime] FROM [Radnik]"></asp:SqlDataSource>
                        </div>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"><strong><em>Izaberite Tretman</em></strong></td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="DropDownList3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Height="30px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="172px" DataSourceID="SqlDataSource1" DataTextField="Naziv_tretmana" DataValueField="TretmanId">
                            <asp:ListItem>Dusica</asp:ListItem>
                            <asp:ListItem>Tanja</asp:ListItem>
                            <asp:ListItem>Zivkica</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TretmanId], [Naziv_tretmana] FROM [Tretman]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" Height="60px" Text="Rezervišite sada" Width="307px" OnClick="Button2_Click1" Font-Bold="True" Font-Italic="True" Font-Names="Arial" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label4" runat="server" BorderColor="#993366" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="X-Large"></asp:Label>
        </div>
            </div>
         <div class="footer">
                <h2 class="auto-style1">Copyrigt@Sandra Pantelic </h2>
            </div>
    </form>
</body>
</html>
