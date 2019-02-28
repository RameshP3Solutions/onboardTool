package admin_module_modify.servlet;

import admin_module_modify.service.ModifyDataRetrieve_Serice;
import admin_module_modify.service.Update_User_Registration_Service;
import com.google.gson.JsonObject;
import onboard.encryption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class user_registration
 */
@WebServlet("/Update_User_registration")

public class Update_User_registration extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_User_registration() {
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
        try {
            String uname = request.getParameter("uname");
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email_val = request.getParameter("email_val");
            String project_id = request.getParameter("project_id");
            String application_id = request.getParameter("application_id");
            String id = request.getParameter("id");
            Update_User_Registration_Service update_user_registration_service =new Update_User_Registration_Service().Update_Service_Registration(uname,fname,lname,email_val,project_id,application_id,id);
/*            String update_registration = new Update_User_Registration_Service().Update_Service_Registration(uname,fname,lname,email_val,project_id,application_id,id);*/
            System.out.println("testing----->"+update_user_registration_service);
            /*String myDriver = "org.gjt.mm.mysql.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/Onboarding";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "password123");
            Statement st = conn.createStatement();
            String query = "update admin_userdetails set uname='" + uname + "',fname='" + fname + "',lname='" + lname + "',email='" + email_val + "',projects='" + project_id + "',application='" + application_id + "' where id='" + id + "'; ";
            st.executeUpdate(query);
            conn.close();*/
            response.sendRedirect("Modify_Admin_Users_list.jsp");
        } catch (Exception e) {
            System.err.println("[ERROR]-----Got an exception!" + e + "----[ERROR]");
        }
    }

}
