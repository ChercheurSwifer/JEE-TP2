<%@page import="fr.alexisl.tp1.beans.Articles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Article</title>
<link type="text/css" rel="stylesheet" href="inc/style.css" />
</head>
<body>
	<%
		Articles articles = (Articles) request.getAttribute("articles");
	%>
	<h3>Article</h3>
	<p><% out.println("Titre : " + articles.getTitre()); %></p>
	<p><% out.println("Decription : " + articles.getDescription()); %></p>
	<p><% out.println("Contenu : " + articles.getContenu()); %></p>
	<p><% out.println("Auteur : " + articles.getAuteur()); %></p>
</body>
</html>