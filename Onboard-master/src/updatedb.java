import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;

import org.apache.log4j.MDC;
import javax.servlet.ServletConfig;
/**
 * Servlet implementation class updatedb
 */
@WebServlet("/updatedb")
public class updatedb extends HttpServlet {
private static final long serialVersionUID = 1L;
private Logger logger = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatedb() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init(ServletConfig config) throws ServletException

    {

              logger=Logger.getRootLogger();

              BasicConfigurator.configure();
    }


/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
*/
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
response.getWriter().append("Served at: ").append(request.getContextPath());
String proj_name = request.getParameter("proj_name");
}

/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
*/
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession details=request.getSession(); 
	String u_name=(String)details.getAttribute("username");

		String userid=u_name;
				MDC.put("USERID", userid);
String project_name[]=new String[10];
String complexity[]=new String[10];
String est_db_size[]=new String[10];
String est_cst[]=new String[10];
String priority[]=new String[10];
int count=0;
for(int i=0;i<10;i++){
project_name[i]=request.getParameter("project_name"+i);
complexity[i]=request.getParameter("complexity"+i);
est_db_size[i]=request.getParameter("est_db_size"+i);
est_cst[i]=request.getParameter("est_cst"+i);
priority[i]=request.getParameter("priority"+i);
System.out.println(priority[i]);
if(priority[i]!=null)
	 count++;
}


    PrintWriter writer = response.getWriter();
  
     
        try
        {
          // create a mysql database connection
          String myDriver = "org.gjt.mm.mysql.Driver";
          String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "password123");
        
       
          
          Statement st=conn.createStatement();
          
          for(int a=0;a<count;a++){
          String projectname=project_name[a];
          String complexitye=complexity[a];
          String estdbsize=est_db_size[a];
          String estcst=est_cst[a];
          String priorities=priority[a];
 if(Integer.parseInt(priorities)!=count-a)
	 logger.info("modified priority of the application "+projectname); 
	 
          System.out.println("jkasdjas  "+priorities+" "+projectname);
          
     st.executeUpdate("update app_prior set complexity='"+complexitye+"',est_db_size='"+estdbsize+"',est_cst='"+estcst+"',priorities='"+priorities+"' where proj_name='"+projectname+"'");
 
      System.out.println("update app_prior set complexity='"+complexitye+"',est_db_size='"+estdbsize+"',est_cst='"+estcst+"',priorities='"+priorities+"' where proj_name='"+projectname+"'");
           }
          
          conn.close();
        }
        catch (Exception e)
        {
         
          System.err.println("Got an exception!");
          System.err.println(e.getMessage());
        }
        // return response
        response.sendRedirect("Preview.jsp");

}

}