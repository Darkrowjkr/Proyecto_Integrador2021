using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ProyectoWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.SelectedIndex = 0;
            Label1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=mathprimaria2;Uid=root;Password="))
            {
                if (TextBox1.Text.Length != 0 && TextBox2.Text.Length != 0)
                {
                    String tipo_user = DropDownList1.SelectedValue;
                    MySqlCommand cmd = new MySqlCommand();
                    con.Open();
                    cmd.Connection = con;
                    MySqlDataReader datos;
                    if (tipo_user.Equals("U"))
                    {
                        cmd.CommandText = "SELECT * FROM usuarios WHERE user=?a AND password=?b";
                        cmd.Parameters.Add("?a", MySqlDbType.VarChar).Value = TextBox1.Text;
                        cmd.Parameters.Add("?b", MySqlDbType.VarChar).Value = TextBox2.Text;
                        datos = cmd.ExecuteReader();
                        if (datos.Read())
                        {
                            Session["userid"] = datos.GetInt16("id_user");
                            Session["nombre"] = datos.GetString("nombre");
                            Server.Transfer("userHome.aspx");
                        }
                        else
                        {
                            Label1.Text = "Error en el nombre de usuario y/o contraseña";
                            Label1.Visible = true;
                        }
                    }
                    else
                    {
                        cmd.CommandText = "SELECT * FROM admin WHERE admin_name=?a AND admin_pwd=?b";
                        cmd.Parameters.Add("?a", MySqlDbType.VarChar).Value = TextBox1.Text;
                        cmd.Parameters.Add("?b", MySqlDbType.VarChar).Value = TextBox2.Text;
                        datos = cmd.ExecuteReader();
                        if (datos.Read())
                        {
                            Session["id_admin"] = datos.GetInt16("id_admin");
                            Session["admin_name"] = datos.GetString("admin_name");
                            Server.Transfer("adminCRUD.aspx");
                        }
                        else
                        {
                            Label1.Text = "Error en el nombre de administrador y/o contraseña";
                            Label1.Visible = true;
                        }
                    }
                    datos.Close();
                }
                else
                {
                    Label1.Text = "Error al tener algun campo vacío";
                    Label1.Visible = true;
                }
            }
        }
    }
}