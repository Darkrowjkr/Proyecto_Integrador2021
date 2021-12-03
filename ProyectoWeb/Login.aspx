<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="Math_icon.ico" type="image/x-icon"/>
    <title></title>
    <style type="text/css">
        body{
            background-image:url("fondo2.png");
            background-size:100% 100%;
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
        .button {
          display: inline-block;
          padding: 30px 40px;
          cursor: pointer;
          text-align: center;
          text-decoration: none;
          outline: none;
          color: #fff;
          border: none;
          border-radius: 50px;
          box-shadow: 0 9px #f0f7f5;
          margin-left:9%;
          margin-top:3%;
        }

        .auto-style11 {
            width: 190px;
        }
        .auto-style12 {
            width: 276px;
        }
        .auto-style14 {
            width: 133px;
        }
        .auto-style15 {
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="vertical-align:central; align-content:center; width:80%; margin-left:20%; margin-top:8%;">
        <table style="background-color:#ffffff; border-radius:5px 5px; height:400px;">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3" colspan="2" style="font-size: 50px; color: #0066FF; text-align: center">INICIAR SESIÓN</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11" colspan="2">
                    <center><asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Large" Width="182px">
                        <asp:ListItem Selected="True" Value="U">Usuario</asp:ListItem>
                        <asp:ListItem Value="A">Administrador</asp:ListItem>
                    </asp:DropDownList></center>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11" style="font-size: x-large; color: #FF9900; font-weight: bold; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">Usuario</td>
                <td class="auto-style12">
                    <center><asp:TextBox ID="TextBox1" runat="server" Width="200px" Font-Size="X-Large"></asp:TextBox></center>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11" style="font-size: x-large; font-weight: bold; color: #FF9900; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">Contraseña</td>
                <td class="auto-style12">
                    <center><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px" Font-Size="X-Large"></asp:TextBox></center>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style5" colspan="2">
                    <center><asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False" Font-Italic="True" Font-Size="Large"></asp:Label></center>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <center><asp:Button ID="Button1" CssClass="button" runat="server" Text="CANCELAR" Width="300px" BackColor="Red" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" Font-Size="X-Large" /></center>
                </td>
                <td class="auto-style10" colspan="2">
                    <center><asp:Button ID="Button2" CssClass="button" runat="server" Text="INGRESAR" Width="300px" BackColor="#33CC33" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" Font-Size="X-Large" /></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
