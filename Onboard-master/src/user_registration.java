

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class user_registration
 */
@WebServlet("/user_registration")

public class user_registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user_registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String roles=request.getParameter("reg_roles");
	String username=request.getParameter("reg_uname");
	String firstname=request.getParameter("reg_fname");
	String lastname=request.getParameter("reg_lname");
	String email=request.getParameter("reg_email");
	String confmemail=request.getParameter("reg_cemail");
	String pass=request.getParameter("reg_pwd");
	String confmpass=request.getParameter("reg_cpwd");
	String projects=request.getParameter("reg_projects");
	String question=request.getParameter("reg_qn");
	String answer=request.getParameter("reg_ans");
	String app=request.getParameter("reg_app");
	
	System.out.println("application name is "+app);
/*	HashMap<String,String> hm=new HashMap<String,String>(); 
	hm.put("Admin","XXXXXXXX");
	hm.put("ArchivalAdmin","XXXXXXRR");
	hm.put("LegacyProgramManager","NXXRRNNN");
	hm.put("ArchivalProgramManager","RXXXXXXX");
	hm.put("ArchivalProjectManager","RXXXXXXX");
	hm.put("ArchivalBusinessAnalyst","NXXXXNNN");
	hm.put("ArchivalTechnicalLead","NXXXXNNN");
	hm.put("ArchivalDeveloper","NRRRRNNN");
	hm.put("TestLead","NNNRRNNN");
	hm.put("LegacyTechnicalSME","NXXRRRNNN");
	hm.put("LegacyBusinessSME","NXRXRRNNN");
	
	String rol=(String)hm.get(roles);
	int i=0;*/
	
	 try
      {
        // create a mysql database connection
        String myDriver = "org.gjt.mm.mysql.Driver";
        String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
        Class.forName(myDriver);
        Connection conn = DriverManager.getConnection(myUrl, "root", "password123");
      
        String query = " insert into user_details (uname, fname, lname, email, pwd, projects, roles,stats,question,answer,application)"
	            + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	          PreparedStatement preparedStmt = conn.prepareStatement(query);
	          preparedStmt.setString(1, username);
	          preparedStmt.setString(2, firstname);
	          preparedStmt.setString(3, lastname);
	          preparedStmt.setString(4, email);
	          preparedStmt.setString(5, pass);
	          preparedStmt.setString(6, projects);
	          preparedStmt.setString(7, roles);
	          preparedStmt.setString(8, "active");
	          preparedStmt.setString(9, question);
	          preparedStmt.setString(10, answer);
	          preparedStmt.setString(11, app);
	          
         preparedStmt.execute();
	          
	         
        
        conn.close();
        response.sendRedirect("confirmation?email="+email);
      }
      catch (Exception e)
      {
      	 
        System.err.println("Got an exception!");
        System.err.println(e.getMessage());
      }		
	}

}
