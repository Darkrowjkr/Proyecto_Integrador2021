<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminCRUD.aspx.cs" Inherits="ProyectoWeb.adminCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="icon" href="Math_icon.ico" type="image/x-icon"/>
    <title></title>
    <style type="text/css">
        body{
            background-image:url("fondo1.jpg");
            background-size:100% 100%;
            background-repeat:no-repeat;
            background-attachment:fixed;
            max-width:1350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
    <asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
    <div class="container-fluid bg-light m-2 rounded-2">
        <h1 class="text-center">Centro de control</h1>
        <h3>
            <asp:Label ID="Label1" runat="server" Text="Bienvenido Administrador"></asp:Label>
        </h3>
        <br />
        <asp:Table ID="Table1" CssClass="table table-dark m-3 table-responsive-sm mb-2 text-center"  runat="server" Width="96%">
            <asp:TableRow ID="header" runat="server">
                <asp:TableCell runat="server">ID</asp:TableCell>
                <asp:TableCell runat="server">USUARIO</asp:TableCell>
                <asp:TableCell runat="server">NOMBRE</asp:TableCell>
                <asp:TableCell runat="server">A. PATERNO</asp:TableCell>
                <asp:TableCell runat="server">A. MATERNO</asp:TableCell>
                <asp:TableCell runat="server">F. NACIMIENTO</asp:TableCell>
                <asp:TableCell runat="server">GENERO</asp:TableCell>
                <asp:TableCell runat="server">CORREO</asp:TableCell>
                <asp:TableCell runat="server">CONTRASEÑA</asp:TableCell>
                <asp:TableCell runat="server" ColumnSpan="2">ACCIONES</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
    </div>
    <asp:Panel ID="Panel1" runat="server" CssClass="modal" tabindex="-1" role="dialog" aria-labelledby="myLabel">
	    <div class="modal-dialog" role="document">
		    <div class="modal-content">
			    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
				    <ContentTemplate>
					    <div class="modal-header">
                            <asp:Label ID="Label3" runat="server" CssClass="h4 modal-title" Text="Label">Editar Usuario</asp:Label>
					    </div>
					    <div class="modal-body">
						    <asp:Table ID="Table2" CssClass="table table-responsive-sm text-center"  runat="server" Width="96%">
                                <asp:TableRow ID="userRow" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Usuario: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtUser" runat="server" Enabled="false" Width="100px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow1" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Nombre Usuario: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtUsername" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow2" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Nombre: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtName" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow3" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Apellido Paterno: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtApPat" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow4" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Apellido Materno: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtApMat" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow5" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Fecha Nacimiento: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtFecha" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow6" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Genero: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtGenero" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow7" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Correo Electrónico: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtEmail" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="editRow8" runat="server">
                                    <asp:TableCell runat="server">
                                        <asp:Label runat="server" Font-Size="Large">Contraseña: </asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell runat="server">
                                        <asp:TextBox ID="txtPwd" runat="server" Width="250px" Font-Size="Large"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
						    </asp:Table>
					    </div>
					    <div class="modal-footer">
						    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="clickBtnConfirmar" OnClientClick="alert('Se ha editado correctamente');" Text="Editar" />
						    <asp:LinkButton ID="Button3" runat="server" CssClass="btn btn-link" OnClick="clickBtnCancelar" Text="Cancelar"></asp:LinkButton>
					    </div>
				    </ContentTemplate>
			    </asp:UpdatePanel>
		    </div>
	    </div>
    </asp:Panel>
    </form>
    
</body>
</html>