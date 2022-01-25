package fr.alexisl.tp1.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import fr.alexisl.tp1.beans.Utilisateur;

@SuppressWarnings("serial")
public class CreationUtilisateurs extends HttpServlet
{
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

        String nom = request.getParameter( "nomUtilisateur" );
        String prenom = request.getParameter( "prenomUtilisateur" );
        String email = request.getParameter( "emailUtilisateur" );

        Utilisateur utilisateur = new Utilisateur();
        utilisateur.setNom( nom );
        utilisateur.setPrenom( prenom );
        utilisateur.setEmail( email );

        request.setAttribute( "utilisateur", utilisateur );
        this.getServletContext().getRequestDispatcher( "/WEB-INF/afficherUtilisateur.jsp" ).forward( request, response );

    }
    
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
    	this.getServletContext().getRequestDispatcher( "/WEB-INF/creerUtilisateurs.jsp" ).forward( request, response );
    }
    
}
