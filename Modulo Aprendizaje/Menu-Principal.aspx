<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Menu-Principal.aspx.vb" Inherits="Modulo_Aprendizaje.Menu_Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Campus Virtual Cursos de Profundización</title>
    <link href="css/Menu-Principal.css" rel="stylesheet" />
</head>
<body style="height: 312px">
    <form id="form1" runat="server">
    <header>
        <img class="Unad" src="imagenes/Unad.png" />
        <h1>Campus Virtual Cursos de Profundización
        <br />
            Universidad Nacional Abierta y a Distancia
        </h1>
        </header>
    <div class="Principal">
    <h2>Menú Principal</h2>
        <br />
     <a href="Amazon.aspx"><input class="Amazon" type="button" value="Amazon Web Services" /></a>
        <br />
     <input class="ASP" type="button" value="Active Server Pages" />
        <br />
     <input class="Bigdata" type="button" value="Big Data" />
        <br />
     <input class="Learning" type="button" value="Learning Machine" />
        <br />
     <input class="Mineria" type="button" value="Minería de Datos" />
      <br />
      <br />  
    <footer>
        <h3>Rumbo a la Acreditación Institucional</h3>
    </footer>
    </div>
    </form>
    </body>
</html>
