package Opportunity.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.ws.rs.GET;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import ArchiveExecutionModule.ArchiveExecutionDetails.service.ArchiveExecutionTemplateService;
import Opportunity.OpportunityBean;
import onboard.DBconnection;

public class NewOpportunityCreateService {

	public static JsonObject OpportunityValidation(String AppName,JsonArray jsonArray,boolean checkMandatory)
	{
		PreparedStatement st=null,st1=null;
		ResultSet rs=null,rs1=null;
		JsonObject jsonObject = new JsonObject();
		try
		{
			boolean checkAPMID = false;
			boolean checkAppName = false;
			DBconnection dBconnection = new DBconnection();
			Connection connection = (Connection) dBconnection.getConnection();
			String AMPID = OpportunityBean.getRecord_Number();
			String CheckQueryAmpid = "SELECT * FROM OPPORTUNITY_INFO WHERE ID='"+AMPID+"'";
			st = connection.prepareStatement(CheckQueryAmpid);
			rs = st.executeQuery();
			if(rs.next())
			{
				checkAPMID = true;
			}
			String CheckQueryAppName = "SELECT * FROM OPPORTUNITY_INFO WHERE COLUMN_NAME = 'appName';";
			st1 = connection.prepareStatement(CheckQueryAppName);
			rs1 = st1.executeQuery();
			while(rs1.next()) {
				if(rs1.getString("value").equals(AppName))
				{
					checkAppName =true;
				}
			}
			jsonObject.addProperty("APMID_VALIDATION", checkAPMID);
			jsonObject.addProperty("AppName_VALIDATION",checkAppName);
			if(checkMandatory==true && checkAPMID == false && checkAppName == false)
			{
				NewOpportunityCreateService.NewOpportunityDetailsSave(jsonArray);
				ArchiveExecutionTemplateService archiveExecObj = new ArchiveExecutionTemplateService(OpportunityBean.getRecord_Number());
				archiveExecObj.archiveTemplateToArchiveInfo();
				archiveExecObj = null;
				System.gc();
			}
			st.close();
			rs.close();
			st1.close();
			rs1.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("Exception----------[info]--------"+e);
		}
		return jsonObject;
	}
	
	
	public static void NewOpportunityDetailsSave(JsonArray jsonArr) {
		PreparedStatement st=null,st1=null,st2=null;
		ResultSet rs=null,rs2=null;
		 try {
			 
			 DBconnection con = new DBconnection();
			 Connection connection = (Connection) con.getConnection();
			 
			  for(int i=0;i<jsonArr.size();i++)
			 {
			JsonObject jsonObj = jsonArr.get(i).getAsJsonObject();
			String name = jsonObj.get("Name").getAsString();
			String value = jsonObj.get("Value").getAsString();
			String SelectQuery = "select * from opportunity_info_details where column_name='"+name+"';";
			st = connection.prepareStatement(SelectQuery);
			rs = st.executeQuery();
			if(rs.next())
			{
				String UpdateQuery = "update opportunity_info_details set value='"+value+"' where column_name ='"+name+"'";
				st1 = connection.prepareStatement(UpdateQuery);
                st1.executeUpdate();
                
			}
			 }
			String SelectTableQuery = "select * from opportunity_info_details order by seq_no;";
			st2 = connection.prepareStatement(SelectTableQuery);
            rs2 = st2.executeQuery();
            while(rs2.next())
            {
            	String Opportunity_InsertQuery = "insert into Opportunity_Info (seq_no,Id, prj_name, app_name, options, label_name, column_name, type, mandatory, value)"
						+ "value(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

				PreparedStatement prestmt = connection.prepareStatement(Opportunity_InsertQuery);
				prestmt.setInt(1, rs2.getInt(1));
				prestmt.setString(2, rs2.getString(2));
				prestmt.setString(3, rs2.getString(3));
				prestmt.setString(4, rs2.getString(4));
				prestmt.setString(5, rs2.getString(5));
				prestmt.setString(6, rs2.getString(6));
				prestmt.setString(7, rs2.getString(7));
				prestmt.setString(8, rs2.getString(8));
				prestmt.setString(9, rs2.getString(9));
				prestmt.setString(10, rs2.getString(10));
				prestmt.execute();
				  }
			st2.close();
			rs2.close();
			st.close();
			rs.close();
			st1.close();
			connection.close();
      
		 }
		 catch(Exception e) {
			 e.printStackTrace();
			System.out.println("Exception----------[info]--------"+e);
		 }
	}
}
