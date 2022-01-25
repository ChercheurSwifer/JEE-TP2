package fr.alexisl.tp1.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import fr.alexisl.tp1.beans.Articles;

public class CreationArticles extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/creationArticles.jsp").forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String titre = req.getParameter("titre");
		String description = req.getParameter("description");
		String contenu = req.getParameter("contenu");
		String auteur = req.getParameter("auteur");
		
		Articles articles = new Articles();
		
		articles.setTitre(titre);
		articles.setDescription(description);
		articles.setContenu(contenu);
		articles.setAuteur(auteur);
		
		req.setAttribute("articles", articles);
		
		req.getRequestDispatcher("/WEB-INF/afficherArticles.jsp").forward(req, resp);
	}
}
