<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un client</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
    <p> Vos Informations de compte : </p>
        <p>Nom : ${ utilisateur.nom }</p>
        <p>Prénom : ${ utilisateur.prenom }</p>
        <p>Email : ${ utilisateur.email }</p>
     
     <br>
      
      <p> BLOG : </p>  
        
    </body>
</html>