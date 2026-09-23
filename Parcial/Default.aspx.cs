
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

    
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombres = txtNombres.Text.Trim();
                string apellidos = txtApellidos.Text.Trim();
                string correo = txtCorreo.Text.Trim();
                string telefono = txtTelefono.Text.Trim();
                string programa = ddlPrograma.SelectedValue;
                string semestre = ddlSemestre.SelectedValue;
                string participacion = rblParticipacion.SelectedValue;
                string jornada = ddlJornada.SelectedValue;
                string comentarios = txtComentarios.Text.Trim();

                string temas = "";

                foreach (ListItem item in cblTemas.Items)
                {
                    if (item.Selected)
                    {
                        temas += item.Text + ", ";
                    }
                }

                if (temas.EndsWith(", "))
                {
                    temas = temas.Substring(0, temas.Length - 2);
                }

                string codigo = "ENCU-" + DateTime.Now.ToString("yyyyMMddHHmmss");

                lblMensaje.Text =
                    "<strong>Registro realizado correctamente.</strong><br/><br/>" +
                    "<strong>Código:</strong> " + codigo + "<br/>" +
                    "<strong>Estudiante:</strong> " + nombres + " " + apellidos + "<br/>" +
                    "<strong>Correo:</strong> " + correo + "<br/>" +
                    "<strong>Teléfono:</strong> " + telefono + "<br/>" +
                    "<strong>Programa:</strong> " + programa + "<br/>" +
                    "<strong>Semestre:</strong> " + semestre + "<br/>" +
                    "<strong>Participación:</strong> " + participacion + "<br/>" +
                    "<strong>Jornada:</strong> " + jornada + "<br/>" +
                    "<strong>Temas de interés:</strong> " + temas + "<br/>" +
                    "<strong>Observaciones:</strong> " + comentarios;
            }
            else
            {
                lblMensaje.Text = "Por favor, revise los datos del formulario.";
            }
        }

       
        protected void cvParticipacion_ServerValidate(
            object source, ServerValidateEventArgs args)
        {
            args.IsValid = rblParticipacion.SelectedIndex >= 0;
        }

       
        protected void cvTemas_ServerValidate(
            object source, ServerValidateEventArgs args)
        {
            bool seleccionado = false;

            foreach (ListItem item in cblTemas.Items)
            {
                if (item.Selected)
                {
                    seleccionado = true;
                    break;
                }
            }

            args.IsValid = seleccionado;
        }

       
        protected void cvAcepta_ServerValidate(
            object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkAcepta.Checked;
        }

       
        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombres.Text = "";
            txtApellidos.Text = "";
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            txtComentarios.Text = "";

            ddlPrograma.SelectedIndex = 0;
            ddlSemestre.SelectedIndex = 0;
            ddlJornada.SelectedIndex = 0;

            rblParticipacion.ClearSelection();

            foreach (ListItem item in cblTemas.Items)
            {
                item.Selected = false;
            }

            chkAcepta.Checked = false;

            lblMensaje.Text = "";
        }
       
        protected void btnNuevoRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }


        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
