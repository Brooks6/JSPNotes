package com.au.usyd.brooks;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class testParamServlet
 */
@WebServlet("/testParamServlet")
public class testParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testParamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//step 1: set content type
		response.setContentType("text/html");
		//step 2: get printwriter
		PrintWriter out = response.getWriter();
		//step 3: read configuratin params
		ServletContext context = getServletContext(); // inherit from HttpServlet
		String maxCartSize = context.getInitParameter("maxShoppingCartSize");
		String teamName = context.getInitParameter("projectTeamName");
		//step 4: generate html content
		out.println("<html><body>");
		out.println("max cart: " + maxCartSize);
		out.println("<br/><br/>");
		out.println("team name: " + teamName);
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
