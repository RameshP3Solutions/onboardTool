package NewArchiveRequirements.LegacyApplicationInfo.Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import NewArchiveRequirements.LegacyApplicationInfo.Service.LegacyAppInfoService;


/**
 * Servlet implementation class LegacyAppInfoDataRetrieveServlet
 */
@WebServlet("/LegacyAppInfoDataRetrieveServlet")
public class LegacyAppInfoDataRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LegacyAppInfoDataRetrieveServlet() {
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
		HttpSession details = request.getSession();
        String Id=(String)details.getAttribute("ID");
        String Opportunityname=(String)details.getAttribute("SelectedOpportunity");
        System.out.println("Legacy App Id : "+Id);
        System.out.println("Legacy Application Name : "+Opportunityname);
        JsonArray jsonArray = null;
		LegacyAppInfoService Appinfo =  new LegacyAppInfoService();
		jsonArray = Appinfo.LegacyAppInfoDataRetrieveService(Id,Opportunityname);
		Appinfo =null;
		//calling finalize method and garbage collector
		System.gc();
		System.out.println("JSON ARRAY"+jsonArray);
			String json = new Gson().toJson(jsonArray);
	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");
	        response.getWriter().write(json);
	}
}

