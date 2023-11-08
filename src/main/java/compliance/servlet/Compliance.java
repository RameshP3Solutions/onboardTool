package compliance.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import compliance.service.IntakeReportService;

/**
* Servlet implementation class Retrieve_users_servlet
*/
@WebServlet("/Compliance")
public class Compliance extends HttpServlet {
    private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Compliance() {
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
        // TODO Auto-generated method stub
        HttpSession details = request.getSession();
        System.out.println("Connected in intake 2 Servlet");
        String ReportName=request.getParameter("category");
        String Paginationnext=request.getParameter("direction");
        System.out.println("Paginationnext : "+Paginationnext);
        String SearchBar = request.getParameter("Search");
        String SearchRequester = request.getParameter("SearchRequest");
        System.out.println("SearchRequest : "+SearchRequester);
        System.out.println("Search :: "+SearchBar);
        System.out.println("Report Name :: "+ReportName);
        JsonArray jsonArray = null;
        IntakeReportService ReportDetails =  new IntakeReportService();
    if((SearchBar == "") && (ReportName != null)) {
    	System.out.println("Checkinggg-------------------------------===========");
    try {
		jsonArray = ReportDetails.ReportDetails(ReportName);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    }
    else {
    	System.out.println("Checkingggn in else-------------------------------===========");
    	try {
    		jsonArray = ReportDetails.ReportDetailsfilter(ReportName,SearchBar,SearchRequester);
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
    }
    
        ReportDetails=null;
        //calling finalize method and garabage collector
        System.gc();
        String json = new Gson().toJson(jsonArray);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        System.out.println("Report details from servlet :: "+json);
        response.getWriter().write(json);
    }
}