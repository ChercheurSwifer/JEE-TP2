<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'un compte utilisateur</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <div>
            <form method="POST" action="creationUtilisateurs">
                <fieldset>
                    <legend>Inscription</legend>
    
                    <label for="nomUtilisateur">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomUtilisateur" name="nomUtilisateur" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="prenomUtilisateur">Prénom </label>
                    <input type="text" id="prenomUtilisateur" name="prenomUtilisateur" value="" size="20" maxlength="20" />
                    <br />
             
                    <label for="emailUtilisateur">Adresse email</label>
                    <input type="email" id="emailUtilisateur" name="emailUtilisateur" value="" size="20" maxlength="60" />
                    <br />
                </fieldset>
                <input type="submit" value="Valider"  />
            </form>
        </div>
    </body>
</html>