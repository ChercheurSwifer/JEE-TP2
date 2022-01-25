<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Cr�ation d'un article</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <div>
        	<h1>Ajout d'un article</h1>
            <form method="post" action="creationArticles">
                <fieldset>    
                    <label for="titre">Titre</label>
                    <input type="text" id="titre" name="titre" value="" size="20" maxlength="20" />
                    <br />
                    
                    <label for="description">Description</label>
                    <input type="text" id="description" name="description" value="" size="20" />
                    <br />
    
                    <label for="contenu">Contenu</label>
                    <input type="text" id="contenu" name="contenu" value="" size="20" />
                    <br />
    
                    <label for="auteur">Auteur</label>
                    <input type="text" id="auteur" name="auteur" value="" size="20" />
                    <br />
                </fieldset>
                <input type="submit" value="Valider"  />
            </form>
        </div>
    </body>
</html>