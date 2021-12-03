using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using MySql.Data.MySqlClient;

namespace ProyectoWeb
{
    public partial class adminCRUD : System.Web.UI.Page
    {
        private Button[] btnEditar = new Button[1];
        private Button[] btnEliminar = new Button[1];
        private int cont = 0;
        private int[] ids = new int[1];
        private int idSeleccionado = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_admin"] != null)
            {
                Label1.Text = "Bienvenido Administrador " + Session["admin_name"].ToString();
            }
            else
            {
                Label1.Text = "Bienvenido Administrador";
            }
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=mathprimaria2;Uid=root;Password="))
            {
                MySqlCommand cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                MySqlDataReader datos1;
                cmd.CommandText = "SELECT count(user) FROM usuarios";
                datos1 = cmd.ExecuteReader();
                if (datos1.Read())
                {
                    int num = datos1.GetInt16(0);
                    btnEditar = new Button[num];
                    btnEliminar = new Button[num];
                    ids = new int[num];
                }
                datos1.Close();
                MySqlDataReader datos;
                cmd.CommandText = "SELECT * FROM usuarios";
                datos = cmd.ExecuteReader();
                while(datos.Read()){
                    TableRow r = new TableRow();
                    for (int i = 0; i < 9; i++)
                    {
                        TableCell c = new TableCell();
                        String consulta = datos.GetValue(i) + " ";
                        int indice = consulta.IndexOf(" ");
                        String con2 = consulta.Substring(0, indice);
                        if (i == 0) { ids[cont] = int.Parse(con2); }
                        c.Controls.Add(new LiteralControl(con2));
                        r.Cells.Add(c);
                    }
                    TableCell cT = new TableCell();
                    btnEditar[cont] = new Button { Text = "Editar", ID = ("edit" + cont), BackColor = Color.Orange };
                    btnEditar[cont].Attributes.Add("runat", "server");
                    btnEditar[cont].Click += new EventHandler(this.clickBtnEditar);
                    cT.Controls.Add(btnEditar[cont]);
                    r.Cells.Add(cT);
                    cT = new TableCell();
                    btnEliminar[cont] = new Button { Text = "Eliminar", ID = ("delete" + cont), BackColor = Color.Red, OnClientClick = "if(!confirm('¿Estas seguro de eliminar al usuario?')) return false;" };
                    btnEliminar[cont].Attributes.Add("runat", "server");
                    btnEliminar[cont].Click += new EventHandler(this.clickBtnEliminar);
                    cT.Controls.Add(btnEliminar[cont]);
                    r.Cells.Add(cT);
                    Table1.Rows.Add(r);
                    cont++;
                }
                datos.Close();
            }
        }

        //boton de editar usuario(excepto id)
        protected void clickBtnEditar(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int fila = int.Parse(btn.ID.Substring(btn.ID.Length-1));
            idSeleccionado = ids[fila];
            Label3.Text = "Editar usuario con ID = "+idSeleccionado;
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=mathprimaria2;Uid=root;Password="))
            {
                MySqlCommand cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                MySqlDataReader datos;
                cmd.CommandText = "SELECT * FROM usuarios WHERE id_user="+idSeleccionado;
                datos = cmd.ExecuteReader();
                if (datos.Read())
                {
                    txtUser.Text = datos.GetString(0);
                    txtUsername.Text = datos.GetString(1);
                    txtName.Text = datos.GetString(2);
                    txtApPat.Text = datos.GetString(3);
                    txtApMat.Text = datos.GetString(4);
                    String consulta = datos.GetString(5);
                    int indice = consulta.IndexOf(" ");
                    txtFecha.Text = consulta.Substring(0, indice);
                    txtGenero.Text = datos.GetString(6);
                    txtEmail.Text = datos.GetString(7);
                    txtPwd.Text = datos.GetString(8);
                }
                con.Close();
            }
            //Aqui agregar un modal con los datos del usuario a editar
            ScriptManager.RegisterStartupScript(UpdatePanel2, UpdatePanel2.GetType(), "show", "$(function () { $('#" + Panel1.ClientID + "').modal('show'); });", true);
            UpdatePanel2.Update();
        }
        
        //boton de confirmar cambio del modal
        protected void clickBtnConfirmar(object sender, EventArgs e) {
            //convertir la fecha al orden que es
            char[] fecha = txtFecha.Text.ToCharArray();
            string fechaCorregida = fecha[fecha.Length - 4] +""+ fecha[fecha.Length - 3] + "" + fecha[fecha.Length - 2] + "" +
                fecha[fecha.Length - 1] + "-" + fecha[fecha.Length - 7] +""+ fecha[fecha.Length - 6] + "-" +
                fecha[0] +""+ fecha[1];
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=mathprimaria2;Uid=root;Password="))
            {
                MySqlCommand cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "UPDATE usuarios SET user=?a, nombre=?b, ap_paterno=?c, ap_materno=?d, fec_nacimiento=?e, genero=?f, email=?g, password=?h WHERE id_user=?i";
                cmd.Parameters.Add("?a", MySqlDbType.VarChar).Value = txtUsername.Text;
                cmd.Parameters.Add("?b", MySqlDbType.VarChar).Value = txtName.Text;
                cmd.Parameters.Add("?c", MySqlDbType.VarChar).Value = txtApPat.Text;
                cmd.Parameters.Add("?d", MySqlDbType.VarChar).Value = txtApMat.Text;
                cmd.Parameters.Add("?e", MySqlDbType.VarChar).Value = fechaCorregida;
                cmd.Parameters.Add("?f", MySqlDbType.VarChar).Value = txtGenero.Text;
                cmd.Parameters.Add("?g", MySqlDbType.VarChar).Value = txtEmail.Text;
                cmd.Parameters.Add("?h", MySqlDbType.VarChar).Value = txtPwd.Text;
                cmd.Parameters.Add("?i", MySqlDbType.Int16).Value = Int16.Parse(txtUser.Text);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect(Request.Url.ToString());
        }

        //boton de cancelar el cambio del modal
        protected void clickBtnCancelar(object sender, EventArgs e) {
            ScriptManager.RegisterStartupScript(UpdatePanel2, UpdatePanel2.GetType(), "hide", "$(function () { $('#" + Panel1.ClientID + "').modal('hide'); });", true);
            UpdatePanel2.Update();
        }

        //boton de eliminar usuario
        protected void clickBtnEliminar(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int fila = int.Parse(btn.ID.Substring(btn.ID.Length - 1));
            idSeleccionado = ids[fila];
            //Agregar un mensaje emergente para confirmar si se elimina o no el usuario
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=mathprimaria2;Uid=root;Password="))
            {
                MySqlCommand cmd = new MySqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "DELETE FROM usuarios WHERE id_user=?a";
                cmd.Parameters.Add("?a", MySqlDbType.Int16).Value = idSeleccionado;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect(Request.Url.ToString());
        }
    }
}