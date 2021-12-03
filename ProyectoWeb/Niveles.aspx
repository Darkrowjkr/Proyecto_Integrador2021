<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Niveles.aspx.cs" Inherits="ProyectoWeb.Niveles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link rel="icon" href="img/Math_icon.ico" type="image/x-icon"/>
    <title></title>
    <style type="text/css">
        body{
            background-image: url("fondoPlataforma.jpg");
            background-repeat:no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        .topright {
           position: absolute;
           top: 8px;
           right: 16px;
           font-size: 18px;
       }

        .button9 {
            border: none;
            color: white;
            padding: 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
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
        .button9 {
            border: none;
            color: white;
            width: 90px;
            height: 90px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 50%;
        }
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            width:130px;
            height:130px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 65px;
            margin: 15px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .button1 {
            background-color: #15975e;
            color: white;
           font-family:"Franklin Gothic";
            border: 2px solid #4CAF50;
            border-radius:50%;
        }

            .button1:hover {
                background-color: white;
                color: #00ff21;
            }
        h1 {
            color: #eb7815;
            text-align: center;
            font-family: Arial;
            font-size: 50px;
        }
       
            </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>NIVEL 1</h1>
        <div class="w3-white w3-round-xlarge" style="margin-right:30%; margin-top:1px; margin-left:15%">
            
                <div class="w3-container w3-orange w3-round-xlarge" style="width: 75%; height:30px; 
                        text-align:center; padding-top:1px; color:#ffffff; font-size:20px;">75%</div>
                 </div>
    <div style="margin-left:15%; margin-top:1px;">
       
            <table style=" height:500px; width:950px;">
                <tr>
                <td class="auto-style12">    
             <asp:Button ID="btn1" CssClass="button button1"  runat="server" Text="1" OnClick="Button_Click" />
                </td>
                <td class="auto-style12">
             <asp:Button ID="Button2" CssClass="button button1" runat="server" Text="2" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button1" CssClass="button button1" runat="server" Text="3" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button3" CssClass="button button1" runat="server" Text="4" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button4" CssClass="button button1" runat="server" Text="5" OnClick="Button_Click" />
                </td>
                
            </tr>
                <tr>
                <td class="auto-style12">    
             <asp:Button ID="Button5" CssClass="button button1"  runat="server" Text="6" OnClick="Button_Click" />
                </td>
                <td class="auto-style12">
             <asp:Button ID="Button6" CssClass="button button1" runat="server" Text="7" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button10" CssClass="button button1" runat="server" Text="8" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button11" CssClass="button button1" runat="server" Text="9" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button12" CssClass="button button1" runat="server" Text="10" OnClick="Button_Click" />
                </td>
                
            </tr>
                 <tr>
                <td class="auto-style12">    
             <asp:Button ID="Button13" CssClass="button button1"  runat="server" Text="11" OnClick="Button_Click" />
                </td>
                <td class="auto-style12">
             <asp:Button ID="Button14" CssClass="button button1" runat="server" Text="12" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button15" CssClass="button button1" runat="server" Text="13" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button16" CssClass="button button1" runat="server" Text="14" OnClick="Button_Click" />
                </td>
                     <td class="auto-style12">
             <asp:Button ID="Button17" CssClass="button button1" runat="server" Text="15" OnClick="Button_Click" />
                </td>
                
            </tr>
        </table>
        <div class="w3-padding w3-display-topright">
                <asp:Button ID="Button7" Width="180px" BackColor="White" ForeColor="#fa3d1b" Font-Size="X-Large"
                    BorderColor="White" Font-Bold="true" Height="50px" runat="server" Text="CERRAR" OnClick="Button7_Click" />
                <asp:Button ID="Button8" Width="180px" BackColor="White" ForeColor="#0033cc" Font-Size="X-Large"
                    BorderColor="White" Height="50px" runat="server" Text="INSTRUCTIVO" OnClick="Button8_Click" />
        </div>
         
         <div class="w3-padding w3-display-topleft">
             <div class=" w3-xxxlarge w3-text-white" >
                 <asp:Button CssClass="button9 button7" ID ="Button9" runat="server"  Font-Size="XX-Large" BorderColor="Orange" BackColor="Orange" 
                     Text="US"  OnClick="Button9_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
