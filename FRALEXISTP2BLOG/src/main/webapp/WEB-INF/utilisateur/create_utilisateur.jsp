<%@page import="FRALEXISTP2BLOG.beans.Utilisateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Creation utilisateur</title>
<link type="text/css" rel="stylesheet" href="inc/style.css" />
</head>
<body>
	<h1>Ajouter un utilisateur</h1>
	<p> >>> : <a href="/FRALEXISTP2BLOG/articles">Voir les articles</a> </p>
	<hr>
	<%@ include file="/WEB-INF/generic/message.jsp" %>
	<form action="" method="post">
		<label for="nom">Nom : </label>
		<br>
		<input type="text" id="nom" name="nom">
		<br>
		<br>
		<label for="prenom">Prenom : </label>
		<br>
		<input type="text" id="prenom" name="prenom">
		<br>
		<br>
		<label for="email">Email : </label>
		<br>
		<input type="text" id="email" name="email">
		<br>
		<br>
		<input type="submit" value="Ajouter l'utilisateur">
	</form>
	<hr>
	<h2>Voici la liste de vos utilisateurs : </h2>
	<ul>
	<%
		List<Utilisateur> utilisateurs = (List<Utilisateur>) request.getAttribute("utilisateurs");
		for (Utilisateur utilisateur : utilisateurs) {
			out.println("<li>");
			out.println(utilisateur.getNom() + " " + utilisateur.getPrenom() + " | " + utilisateur.getEmail());
			out.println("</li>");
		}
	%>
	</ul>
</body>
</html>