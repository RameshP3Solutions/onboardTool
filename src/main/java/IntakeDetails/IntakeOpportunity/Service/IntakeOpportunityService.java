package IntakeDetails.IntakeOpportunity.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import Opportunity.OpportunityBean;
import onboard.DBconnection;

public class IntakeOpportunityService {

	
	public static JsonArray IntakeOpportunityDataRetrieveService(String Id) {
		JsonArray jsonArray = new JsonArray();
		try {
			DBconnection dBconnection = new DBconnection();
			Connection con = (Connection) dBconnection.getConnection();
			
			String SelectQuery = "select * from opportunity_info where Id = '"+Id+"' order by seq_no;";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(SelectQuery);
			
			while(rs.next()) {
				JsonObject jsonObject = new JsonObject();
				
				jsonObject.addProperty("seq_num", rs.getString("seq_no"));
				jsonObject.addProperty("id", rs.getString("Id"));
				jsonObject.addProperty("Project_Name", rs.getString("prj_name"));
				jsonObject.addProperty("App_Name", rs.getString("app_name"));
				jsonObject.addProperty("options", rs.getString("options"));
				jsonObject.addProperty("LabelName", rs.getString("label_name"));
				jsonObject.addProperty("ColumnName", rs.getString("column_name"));
				jsonObject.addProperty("Type", rs.getString("type"));
				jsonObject.addProperty("Mandatory", rs.getString("mandatory"));
				jsonObject.addProperty("Value", rs.getString("value"));
				
				jsonArray.add(jsonObject);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Exception-------[info]--------" +e);
		}
		return jsonArray;
	}
	public static void IntakeOpportunityAddOperationService(String id,String label_name, String column_name, String mandatory, String type, int NumberofInputfields, String options )
	{

			try {
				DBconnection dBconnection = new DBconnection();
				Connection connection = (Connection) dBconnection.getConnection();
				String select_query = "select * from Opportunity_Info where Id = '"+id+"' order by seq_no;";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(select_query);
				String name = "OpportunityAddInfo";
				int max_seq_num = 1;
				if (rs.next()) {
					String max_seqnum = "select max(seq_no) from Opportunity_Info where Id = '"+id+"' order by seq_no;";
					Statement st1 = connection.createStatement();
					ResultSet rs1 = st1.executeQuery(max_seqnum);

					if (rs1.next()) {
						max_seq_num = Integer.parseInt(rs1.getString(1));
						max_seq_num++;
					}
				}
				if (!type.equals("Text box") && !type.equals("Datepicker")) {
					options = options.substring(0, options.length() - 1);
				}
				String insert_query = "insert into Opportunity_Info (seq_no,id,prj_name,app_name,options,label_name,column_name,type,mandatory,value) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
				PreparedStatement preparedStatement1 = connection.prepareStatement(insert_query);
				preparedStatement1.setInt(1, max_seq_num);
				preparedStatement1.setString(2, id);
				preparedStatement1.setString(3, "");
				preparedStatement1.setString(4, "");
				preparedStatement1.setString(5, options);
				preparedStatement1.setString(6, label_name);
				preparedStatement1.setString(7, (name + max_seq_num));
				preparedStatement1.setString(8, type);
				preparedStatement1.setString(9, mandatory);
				preparedStatement1.setString(10, "");
				preparedStatement1.execute();
			} catch (Exception e) {
				System.out.println("Exception---[info]------" + e);
			}
	}
	
	public static JsonObject IntakeOpportunityEditService(String label_name, int sequencenumber,String id) {
		JsonObject jsonobj = new JsonObject();
		try {
			DBconnection dBconnection = new DBconnection();
			Connection connection = (Connection) dBconnection.getConnection();
			String PreviouslabelQuery = "select label_name from Opportunity_Info where id = '"+id+"' and seq_no ='"+ sequencenumber + "';";
			Statement st1 = connection.createStatement();
			ResultSet rs1 = st1.executeQuery(PreviouslabelQuery);
			if (rs1.next()) {
				jsonobj.addProperty("previous_label_name", rs1.getString(1));
			}

			String update_query = "update Opportunity_Info set label_name =? where id = '"+id+"' and seq_no='" + sequencenumber +"';";
			PreparedStatement preparedStmt1 = connection.prepareStatement(update_query);
			preparedStmt1.setString(1, label_name);
			preparedStmt1.execute();
			String SelectQuery = "select * from Opportunity_Info where id ='"+id+"' and seq_no ='" + sequencenumber + "';";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(SelectQuery);
			int i = 1;
			if (rs.next()) {
				ResultSetMetaData rsmd = rs.getMetaData();
				while (i <= rsmd.getColumnCount()) {
					jsonobj.addProperty(rs.getMetaData().getColumnName(i), rs.getString(i));
					i++;
				}
			}
		} catch (Exception e) {
			System.out.println("Exception---->>>>" + e);
		}
		System.out.println("Json object " + jsonobj);
		return jsonobj;
	}
	
	public static void IntakeOpportunityDeleteService(int delete_seqnum, String Id) {
		try {
			int seqmax = 0;
			DBconnection dBconnection = new DBconnection();
			Connection connection = (Connection) dBconnection.getConnection();
			ArrayList<Integer> arr_seqmax = new ArrayList<Integer>();
			ArrayList<String> arr_id = new ArrayList<String>();
			ArrayList<String> arr_prj = new ArrayList<String>();
			ArrayList<String> arr_app = new ArrayList<String>();
			ArrayList<String> arr_options = new ArrayList<String>();
			ArrayList<String> arr_label_name = new ArrayList<String>();
			ArrayList<String> arr_column_name = new ArrayList<String>();
			ArrayList<String> arr_type = new ArrayList<String>();
			ArrayList<String> arr_mandatory = new ArrayList<String>();
			ArrayList<String> arr_value = new ArrayList<String>();

			ArrayList<Integer> arr_seqmax_split = new ArrayList<Integer>();
			ArrayList<String> arr_id_split = new ArrayList<String>();
			ArrayList<String> arr_prj_split = new ArrayList<String>();
			ArrayList<String> arr_app_split = new ArrayList<String>();
			ArrayList<String> arr_options_split = new ArrayList<String>();
			ArrayList<String> arr_label_name_split = new ArrayList<String>();
			ArrayList<String> arr_column_name_split = new ArrayList<String>();
			ArrayList<String> arr_type_split = new ArrayList<String>();
			ArrayList<String> arr_mandatory_split = new ArrayList<String>();
			ArrayList<String> arr_value_split = new ArrayList<String>();

			String select_query = "select max(seq_no) from opportunity_info where Id = '"+Id+"' order by seq_no;";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(select_query);
			if (rs.next()) {
				seqmax = Integer.parseInt(rs.getString(1));
			}

			String query = "select * from opportunity_info where Id = '"+Id+"' order by seq_no;";
			Statement st1 = connection.createStatement();
			ResultSet rs1 = st1.executeQuery(query);
			while (rs1.next()) {
				arr_seqmax.add(rs1.getInt(1));
				arr_id.add(rs1.getString(2));
				arr_prj.add(rs1.getString(3));
				arr_app.add(rs1.getString(4));
				arr_options.add(rs1.getString(5));
				arr_label_name.add(rs1.getString(6));
				arr_column_name.add(rs1.getString(7));
				arr_type.add(rs1.getString(8));
				arr_mandatory.add(rs1.getString(9));
				arr_value.add(rs1.getString(10));
			}

			for (int i = 0; i < seqmax; i++) {
				if (arr_seqmax.get(i) < delete_seqnum) {
					arr_seqmax_split.add(arr_seqmax.get(i));
					arr_id_split.add(arr_id.get(i));
					arr_prj_split.add(arr_prj.get(i));
					arr_app_split.add(arr_app.get(i));
					arr_options_split.add(arr_options.get(i));
					arr_label_name_split.add(arr_label_name.get(i));
					arr_column_name_split.add(arr_column_name.get(i));
					arr_type_split.add(arr_type.get(i));
					arr_mandatory_split.add(arr_mandatory.get(i));
					arr_value_split.add(arr_value.get(i));
				} else if (arr_seqmax.get(i) > delete_seqnum) {
					arr_seqmax_split.add((arr_seqmax.get(i) - 1));
					arr_id_split.add(arr_id.get(i));
					arr_prj_split.add(arr_prj.get(i));
					arr_app_split.add(arr_app.get(i));
					arr_options_split.add(arr_options.get(i));
					arr_label_name_split.add(arr_label_name.get(i));
					arr_column_name_split.add(arr_column_name.get(i));
					arr_type_split.add(arr_type.get(i));
					arr_mandatory_split.add(arr_mandatory.get(i));
					arr_value_split.add(arr_value.get(i));
				}
			}

			String delete_query = "delete from opportunity_info where id='"+Id+"';";
			Statement st2 = connection.createStatement();
			st2.executeUpdate(delete_query);
			for (int j = 0; j < seqmax - 1; j++) {
				String insert_query = "insert into opportunity_info (seq_no,id,prj_name,app_name,options,label_name,column_name,type,mandatory,value) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
				PreparedStatement preparedStatement1 = connection.prepareStatement(insert_query);
				preparedStatement1.setInt(1, arr_seqmax_split.get(j));
				preparedStatement1.setString(2, arr_id_split.get(j));
				preparedStatement1.setString(3, arr_prj_split.get(j));
				preparedStatement1.setString(4, arr_app_split.get(j));
				preparedStatement1.setString(5, arr_options_split.get(j));
				preparedStatement1.setString(6, arr_label_name_split.get(j));
				preparedStatement1.setString(7, arr_column_name_split.get(j));
				preparedStatement1.setString(8, arr_type_split.get(j));
				preparedStatement1.setString(9, arr_mandatory_split.get(j));
				preparedStatement1.setString(10, arr_value_split.get(j));
				preparedStatement1.execute();
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception---->>>" + e);
		}
	}
	public static JsonArray IntakeDetailsOpportunityAddTemplateFields1(int[] selected_index,String id) {
	      JsonArray jsonArray = new JsonArray();
	      try
	      {
	    	   ArrayList<Integer> seq_no = new ArrayList<Integer>(); 
	    	   ArrayList<String> temp_column_name = new ArrayList<String>(); 
	    	   ArrayList<String> selected_temp_column_name = new ArrayList<String>(); DBconnection dBconnection = new DBconnection();
	    	   Connection connection = (Connection) dBconnection.getConnection(); 
	    	   String SelectedColumnQuery ="select * from opportunity_info_template_details;"; 
	    	   Statement st1 =connection.createStatement(); 
	    	   ResultSet rs1 =st1.executeQuery(SelectedColumnQuery); 
	    	   while(rs1.next()) {
	    		temp_column_name.add(rs1.getString("column_name")); 
	    		}
	    	   for(int k=0;k<selected_index.length;k++) {
	    	   selected_temp_column_name.add(temp_column_name.get(selected_index[k]-1)); 
	    	   }
	    	   String delete_seq_num = ""; 
	    	   String delete_column_name ="";
	    	   String CheckQuery = "select * from opportunity_info where id='"+id+"' order by seq_no";
	    	   Statement st2 = connection.createStatement();
	    	   ResultSet rs2 = st2.executeQuery(CheckQuery);
	    	   boolean check_first_occurance = true;
	    	   
	    	   while(rs2.next())
	    	   {
	    		   String column_name = rs2.getString("column_name");
	    		   if(!selected_temp_column_name.contains(column_name))
	    		   {
	    			    if(check_first_occurance)   
	    			    {
	    			    	IntakeOpportunityDeleteService(rs2.getInt(1),id); 
	    			    check_first_occurance = false;
	    			    }else
	    			    {
	    			    	IntakeOpportunityDeleteService(rs2.getInt(1)-1,id); 
	    			    }
	    			    	
	    			    System.out.println("DELETING COLUMN "+rs2.getString("column_name"));
	                    delete_seq_num += rs2.getInt(1)+",";
	                    delete_column_name +=rs2.getString("column_name")+",";
	    		   }
	    	   }
	    	   if(delete_seq_num.contains(","))
	    	   delete_seq_num = delete_seq_num.substring(0,delete_seq_num.length()-1);
	    	   if(delete_column_name.contains(","))
	        	   delete_column_name = delete_column_name.substring(0,delete_column_name.length()-1);

			   jsonArray.add(delete_column_name);
	    	   String MaxSeqnoQuery = "select max(seq_no) from opportunity_info where Id = '"+id+"' order by seq_no"; 
				  Statement st = connection.createStatement(); 
				  ResultSet rs = st.executeQuery(MaxSeqnoQuery); 
				  int max_seq = 1; 
				  if(rs.next()) { 
					  max_seq = rs.getInt(1); 
					  } 
	    	   for(String col_name : selected_temp_column_name)
	    	   {
	    		   String SelectedQuery = "select * from opportunity_info where id='"+id+"' and column_name ='"+col_name+"';";
	    		   Statement st3 = connection.createStatement();
	        	   ResultSet rs3 = st3.executeQuery(SelectedQuery);
	        	   if(!rs3.next())
	        	   {
	        		   
	        			  String SelectDetailsQuery = "select * from opportunity_info_template_details where column_name='"+col_name+"';";
	        			  Statement st4 = connection.createStatement();
	        		      ResultSet rs4 = st3.executeQuery(SelectDetailsQuery);
	        		  
	        		  if(rs4.next()) {
	        			  //String id = OpportunityBean.getRecord_Number();
	        			  String project_name = rs4.getString(2);
	        			  String appname = rs4.getString(3); 
	        			  String options =rs4.getString(4); 
	        			  String label_name = rs4.getString(5); 
	        			  String column_name = rs4.getString(6); 
	        			  String type = rs4.getString(7); 
	        			  String mandatory = rs4.getString(8);
	        			  String value = rs4.getString(9);
	        			  String Opportunity_InsertQuery ="insert into Opportunity_Info (seq_no, id,  prj_name, app_name, options, label_name, column_name, type, mandatory, value) value(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	        		  
	        		  PreparedStatement prestmt = connection.prepareStatement(Opportunity_InsertQuery); 
	        		  prestmt.setInt(1,max_seq+1); 
	        		  prestmt.setString(2, id); 
	        		  prestmt.setString(3, project_name);
	        		  prestmt.setString(4, appname); 
	        		  prestmt.setString(5, options);
	        		  prestmt.setString(6, label_name); 
	        		  prestmt.setString(7, column_name);
	        		  prestmt.setString(8, type); 
	        		  prestmt.setString(9, mandatory);
	        		  prestmt.setString(10, value); 
	        		  prestmt.execute(); 
	        		  JsonObject jsonObj = new JsonObject(); 
	        		  jsonObj.addProperty("seq_num",max_seq+1);
	        		  jsonObj.addProperty("id",id); 
	        		  jsonObj.addProperty("Project_Name",project_name);
	        		  jsonObj.addProperty("App_Name",appname);
	        		  jsonObj.addProperty("options",options);
	        		  jsonObj.addProperty("LabelName",label_name);
	        		  jsonObj.addProperty("ColumnName",column_name);
	        		  jsonObj.addProperty("Type",type);
	        		  jsonObj.addProperty("Mandatory",mandatory);
	        		  jsonObj.addProperty("Value",value); 
	        		  jsonArray.add(jsonObj);
	        		  max_seq++; 
	        	   }
	        	   
				
			}
	      }
	      }
	      catch(Exception e)
	      {
	    	  e.printStackTrace();
	    	  System.out.println("Exception---------[info]---------"+e);
	      }
	       return jsonArray;
	      }

}