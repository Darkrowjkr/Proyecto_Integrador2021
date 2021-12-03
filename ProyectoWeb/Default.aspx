<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="img/Math_icon.ico" type="image/x-icon"/>
    <title></title>
    <style type="text/css">
        body {
            background-image: url("fondo1.jpg");
            background-repeat:no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
        h1 {
            margin-top: 0px;
            border: 10px solid white;
            font-family: "trebuchet MS ", Verdana, sans-serift,55px;
            background-color: #ffffff;
            color: #22aade;
            text-align: center;
            font-size: 55px;
        }
        h2 {
            font: Georgia, serift;
        }

        .button {
            width: 500px;
            display: inline-block;
            padding: 70px 90px;
            font-size: 35px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            border: none;
            border-radius: 50px;
            box-shadow: 0 9px #f0f7f5;
            margin-left: 9%;
            margin-top: 3%;
        }

        .button1 {
            background-color: #9e5bf3;
        }

            .button1:active {
                background-color: #d9aaf6;
                box-shadow: 0 5px #afe5db;
                transform: translateY(4px);
            }

        .button2 {
            background-color: #ea9b3a;
        }

            .button2:active {
                background-color: #efba70;
                box-shadow: 0 5px #afe5db;
                transform: translateY(4px);
            }

        .button3 {
            background-color: #1cbb47;
        }

            .button3:active {
                background-color: #79bd89;
                box-shadow: 0 5px #afe5db;
                transform: translateY(4px);
            }

        .button4 {
            background-color: #187deb;
        }

            .button4:active {
                background-color: #8bceeb;
                box-shadow: 0 5px #afe5db;
                transform: translateY(4px);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>APRENDE EN CASA</h1>
    <asp:Button ID="btn_info" CssClass="button button1" runat="server" Text="INFORMACION" OnClick="Button1_Click" Font-Size="XX-Large" />
    <asp:Button ID="btn_regis" CssClass="button button2" runat="server" Text="REGISTRARTE"  OnClick="Button2_Click" Font-Size="XX-Large" />
        <br />
    <asp:Button ID="btn_manual" CssClass="button button3" runat="server" Text="MANUAL" OnClick="Button3_Click" Font-Size="XX-Large" />
    <asp:Button ID="btn_login" CssClass="button button4" runat="server" Text="INICIAR SESION"  OnClick="Button4_Click" Font-Size="XX-Large" />
    </div>
    </form>
</body>
</html>
