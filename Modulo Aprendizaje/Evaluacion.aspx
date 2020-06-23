<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Evaluacion.aspx.vb" Inherits="Modulo_Aprendizaje.Evaluacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Evaluación Amazon Web Services</title>
    <link href="css/Evaluacion.css" rel="stylesheet" />
</head>
<body>
    <header>
        <img class="Unad" src="imagenes/Unad.png" />
        <h1>Campus Virtual Cursos de Profundización
        <br />
            Universidad Nacional Abierta y a Distancia
        </h1>
    </header>
    <form id="form1" runat="server">
    <div class="Principal">
    <img class="Amazon" src="imagenes/Amazon.png" />
    <h2>Evaluación Amazon Web Services</h2>
     <p>Esta es la evalaución final del curso de Amazon Web Services, aquí se evaluará sus conocimientos acerca del curso. 
         <br />
         ¡Exitos en el Desarrollo de la Evaluación!.
        </p>
        <asp:Label ID="Label1" runat="server" Text="1. ¿Qué es Amazon Web Services?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Computación en la Nube" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Servicios Web" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Plataforma de Computación en la Nube" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton4" runat="server" Text="Microsoft Azure" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="2. ¿Qué es Computación en la Nube?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton5" runat="server" Text="Servicios Ofrecidos Através de una Red" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton6" runat="server" Text="Amazon Cloud" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton7" runat="server" Text="Amazon Web Services" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton8" runat="server" Text="Ninguna de las Anteriores" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="3. ¿Cómo se Divide la Computación en la Nube?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton9" runat="server" Text="Software como Servicio" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton10" runat="server" Text="Plataforma como Servicio" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton11" runat="server" Text="Infraestructura como Servicio" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton12" runat="server" Text="Todas las Anteriores" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="4. ¿Cuáles son los Aspectos de la Seguridad en la Computación en la Nube?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton13" runat="server" Text="Seguridad en el Servicio, Seguridad en el Explorador, Autenticación, Pérdida de Gobernanza, Lock-In, Protección de los Datos." Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton14" runat="server" Text="Seguridad en el Servicio, Lock-In, Protección de los Datos, Autenticación, Antivirus, Firewall, VPN" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton15" runat="server" Text="Lock-In, Validación de los Datos, Pérdida de los Datos, Antivirus, Firewall" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton16" runat="server" Text="Todas las Anteriores" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="5. ¿Qué es Amazon S3?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton17" runat="server" Text="Proveedor de Bajo Costo de Almacenamiento" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton18" runat="server" Text="Proveedor de Almacenamiento Basado en Servicios Web" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton19" runat="server" Text="Máquina Virtual" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton20" runat="server" Text="Ninguna de las Anteriores" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="6. ¿Cuáles de las Siguientes son Utilidades del Panel de Amazon Web Services?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton21" runat="server" Text="EC2, Code Commit, AWS IOT, Lamba, S3" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton22" runat="server" Text="EMR, SNS, Device Farm, Cloud Front, Glacier" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton23" runat="server" Text="Mobile Hub, Snow Ball, DMS, Directory Service" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton24" runat="server" Text="Todas las Anteriores" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="7. ¿Qué es VPC?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton25" runat="server" Text="Permite Crear Subredes para Máquinas Virtuales" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton26" runat="server" Text="Permite Iniciar Servidores de Amazon" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton27" runat="server" Text="Sistema Operativo de Amazon" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton28" runat="server" Text="Platafoma de Almacenamiento" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="8. ¿Porqué es Importante Configurar la Región en la Línea de Comandos?" Font-Names="Segoe UI Semibold" ForeColor="White"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton29" runat="server" Text="El Sistema se Vuelve Inestable" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton30" runat="server" Text="Los Requerimientos que se Hacen al Servidor van a la Dirección por Defecto" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton31" runat="server" Text="No Inicia el Sistema" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <asp:RadioButton ID="RadioButton32" runat="server" Text="Ninguna de las Anteriores" Font-Names="Segoe UI Semibold" ForeColor="White" />
        <br />
        <br />
        <a href="Menu-Principal.aspx"><input class="Menu" type="button" value="Menu Principal" /></a>
        <a href="Amazon.aspx"><asp:Button ID="Button1" runat="server" Height="50px" Text="Calificar Evaluación" Width="200px" CssClass="Calificar" /></a>
        <br />
        <br />
        <br />
    <footer>
        <h3>Rumbo a la Acreditación Institucional</h3>
    </footer>
    </div>
    </form>
</body>
</html>
