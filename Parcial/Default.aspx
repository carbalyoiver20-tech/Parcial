
<%@ Page Title="Registro Académico" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Parcial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="text-center">
            <h1>Registro a Encuentro Académico</h1>
            <p>Complete la información para realizar su registro.</p>
        </div>

        <hr />

        <h3>Datos personales</h3>

        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="lblNombres" runat="server" Text="Nombres"></asp:Label>
                <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvNombres" runat="server"
                    ControlToValidate="txtNombres"
                    ErrorMessage="Los nombres son obligatorios."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblApellidos" runat="server" Text="Apellidos"></asp:Label>
                <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvApellidos" runat="server"
                    ControlToValidate="txtApellidos"
                    ErrorMessage="Los apellidos son obligatorios."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

        
        <h3>Información de contacto</h3>

        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="lblCorreo" runat="server" Text="Correo electrónico"></asp:Label>
                <asp:TextBox ID="txtCorreo" runat="server"
                    CssClass="form-control"
                    TextMode="Email">
                </asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvCorreo" runat="server"
                    ControlToValidate="txtCorreo"
                    ErrorMessage="El correo es obligatorio."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="revCorreo" runat="server"
                    ControlToValidate="txtCorreo"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                    ErrorMessage="Ingrese un correo válido."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                <asp:TextBox ID="txtTelefono" runat="server"
                    CssClass="form-control">
                </asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server"
                    ControlToValidate="txtTelefono"
                    ErrorMessage="El teléfono es obligatorio."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="revTelefono" runat="server"
                    ControlToValidate="txtTelefono"
                    ValidationExpression="^[0-9]{10}$"
                    ErrorMessage="El teléfono debe tener 10 números."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>
        </div>

        <br />

       
        <h3>Información académica</h3>

        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="lblPrograma" runat="server" Text="Programa académico"></asp:Label>

                <asp:DropDownList ID="ddlPrograma" runat="server" CssClass="form-control">
                    <asp:ListItem Text="-- Seleccione un programa --" Value=""></asp:ListItem>
                    <asp:ListItem Text="Ingeniería de Sistemas" Value="Ingeniería de Sistemas"></asp:ListItem>
                    <asp:ListItem Text="Ingeniería Industrial" Value="Ingeniería Industrial"></asp:ListItem>
                    <asp:ListItem Text="Administración de Empresas" Value="Administración de Empresas"></asp:ListItem>
                    <asp:ListItem Text="Contaduría Pública" Value="Contaduría Pública"></asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator ID="rfvPrograma" runat="server"
                    ControlToValidate="ddlPrograma"
                    InitialValue=""
                    ErrorMessage="Seleccione un programa."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblSemestre" runat="server" Text="Semestre"></asp:Label>

                <asp:DropDownList ID="ddlSemestre" runat="server" CssClass="form-control">
                    <asp:ListItem Text="-- Seleccione semestre --" Value=""></asp:ListItem>
                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                    <asp:ListItem Text="9" Value="9" ></asp:ListItem>
                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator ID="rfvSemestre" runat="server"
                    ControlToValidate="ddlSemestre"
                    InitialValue=""
                    ErrorMessage="Seleccione el semestre."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

   
        <h3>Participación</h3>

        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="lblParticipacion" runat="server"
                    Text="Tipo de participación">
                </asp:Label>

                <asp:RadioButtonList ID="rblParticipacion" runat="server">
                    <asp:ListItem Text="Presencial" Value="Presencial"></asp:ListItem>
                    <asp:ListItem Text="Virtual" Value="Virtual"></asp:ListItem>
                </asp:RadioButtonList>

                <asp:CustomValidator ID="cvParticipacion" runat="server"
                    ErrorMessage="Seleccione un tipo de participación."
                    ForeColor="Red"
                    Display="Dynamic"
                    OnServerValidate="cvParticipacion_ServerValidate">
                </asp:CustomValidator>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblJornada" runat="server" Text="Jornada"></asp:Label>

                <asp:DropDownList ID="ddlJornada" runat="server" CssClass="form-control">
                    <asp:ListItem Text="-- Seleccione una jornada --" Value=""></asp:ListItem>
                    <asp:ListItem Text="Mañana" Value="Mañana"></asp:ListItem>
                    <asp:ListItem Text="Tarde" Value="Tarde"></asp:ListItem>
                    <asp:ListItem Text="Noche" Value="Noche"></asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator ID="rfvJornada" runat="server"
                    ControlToValidate="ddlJornada"
                    InitialValue=""
                    ErrorMessage="Seleccione una jornada."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>
        </div>

        <br />

       
        <h3>Temas de interés</h3>

        <asp:CheckBoxList ID="cblTemas" runat="server">
            <asp:ListItem Text="Desarrollo Web" Value="Desarrollo Web"></asp:ListItem>
            <asp:ListItem Text="Bases de Datos" Value="Bases de Datos"></asp:ListItem>
            <asp:ListItem Text="Inteligencia Artificial" Value="Inteligencia Artificial"></asp:ListItem>
            <asp:ListItem Text="Ciberseguridad" Value="Ciberseguridad"></asp:ListItem>
        </asp:CheckBoxList>

        <asp:CustomValidator ID="cvTemas" runat="server"
            ErrorMessage="Seleccione al menos un tema de interés."
            ForeColor="Red"
            Display="Dynamic"
            OnServerValidate="cvTemas_ServerValidate">
        </asp:CustomValidator>

        <br />

        
        <h3>Observaciones</h3>

        <asp:TextBox ID="txtComentarios" runat="server"
            CssClass="form-control"
            TextMode="MultiLine"
            Rows="4"
            MaxLength="300">
        </asp:TextBox>

        <br />

      
        <asp:CheckBox ID="chkAcepta" runat="server"
            Text=" Acepto el tratamiento de la información suministrada." />

        <asp:CustomValidator ID="cvAcepta" runat="server"
            ErrorMessage="Debe aceptar el tratamiento de la información."
            ForeColor="Red"
            Display="Dynamic"
            OnServerValidate="cvAcepta_ServerValidate">
        </asp:CustomValidator>

        <br />
        <br />

     
        <asp:Button ID="btnRegistrar" runat="server"
            Text="Registrar"
            CssClass="btn btn-primary"
            OnClick="btnRegistrar_Click" />

        <asp:Button ID="btnLimpiar" runat="server"
            Text="Limpiar"
            CssClass="btn btn-default"
            CausesValidation="false"
            OnClick="btnLimpiar_Click" />

      <asp:Button ID="btnNuevoRegistro" runat="server"
       CssClass    ="btn btn-success"
     CausesValidation="false"
     OnClick="btnNuevoRegistro_Click" />

        <asp:Button ID="btnCancelar" runat="server"
            Text="Cancelar"
            CssClass="btn btn-danger"
            CausesValidation="false"
            OnClick="btnCancelar_Click" />


        <br />
        <br />

        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            HeaderText="Revise los siguientes datos:"
            ForeColor="Red" />

        <br />

     
        <div class="alert alert-success">
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>

    </div>

</asp:Content>
