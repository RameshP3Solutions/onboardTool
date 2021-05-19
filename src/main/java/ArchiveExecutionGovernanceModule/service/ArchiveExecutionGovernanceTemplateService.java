package ArchiveExecutionGovernanceModule.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.UUID;

import onboard.DBconnection;

public class ArchiveExecutionGovernanceTemplateService {
DBconnection dBconnection =null;
	
	public Connection con = null;
	
	public String Id = null;
	
	int seqNo = 1;
	
	boolean FirstRow_Flag  = true; 
	
	ArchiveExecutionGovernanceTemplateDetails archiveExecTemp[];
	public ArchiveExecutionGovernanceTemplateService(String Id) throws ClassNotFoundException, SQLException {
		
		dBconnection = new DBconnection();
		con = (Connection) dBconnection.getConnection();
		this.Id = Id;
	}
	
 public void archiveExecutionDefaultRecords() {
	 
	 try {
		 
		 String selectQuery = "select * from Archive_Execution_Governance_Template_Info";
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(selectQuery);
		 
		 if(!rs.next()) {
			 ArchiveExecutionGovernanceTemplateDetails archiveExecTemp[] = new ArchiveExecutionGovernanceTemplateDetails[63];
			 
			 archiveExecTemp[0] = new ArchiveExecutionGovernanceTemplateDetails("1","1","Initiation & Setup - General","");
			 archiveExecTemp[1] = new ArchiveExecutionGovernanceTemplateDetails("2","2","","Project Kickoff Meeting");
			 archiveExecTemp[2] = new ArchiveExecutionGovernanceTemplateDetails("3","2","","Stakeholder/Project Team Identification");
			 archiveExecTemp[3] = new ArchiveExecutionGovernanceTemplateDetails("4","2","","Consultants Remote access setup");
			 archiveExecTemp[4] = new ArchiveExecutionGovernanceTemplateDetails("5","2","","Secure link Access, Applications enablement");
			 archiveExecTemp[5] = new ArchiveExecutionGovernanceTemplateDetails("6","2","","Project Plan, Implementation Roadmap");
			 
			 archiveExecTemp[6] = new ArchiveExecutionGovernanceTemplateDetails("7","1","Infrastructure","");
			 archiveExecTemp[7] = new ArchiveExecutionGovernanceTemplateDetails("8","2","InfoArchive","Access to Existing InfoArchive  - All regions");
			 archiveExecTemp[8] = new ArchiveExecutionGovernanceTemplateDetails("9","2","InfoArchive","Review InfoArchive Architecture");
			 archiveExecTemp[9] = new ArchiveExecutionGovernanceTemplateDetails("10","2","InfoArchive","Architecture Change recommendations (if any)");
			 archiveExecTemp[10] = new ArchiveExecutionGovernanceTemplateDetails("11","2","Archon","Archon - Architecture/Components list");
			 archiveExecTemp[11] = new ArchiveExecutionGovernanceTemplateDetails("12","2","Archon - Dev","Access to Archon Infrastructure");
			 archiveExecTemp[12] = new ArchiveExecutionGovernanceTemplateDetails("13","2","Archon - Dev","Install Archon");
			 archiveExecTemp[13] = new ArchiveExecutionGovernanceTemplateDetails("14","2","Archon - Dev","Test/Validation of Archon");
			 archiveExecTemp[14] = new ArchiveExecutionGovernanceTemplateDetails("15","2","Archon - Dev","LDAP Integration");
			 archiveExecTemp[15] = new ArchiveExecutionGovernanceTemplateDetails("16","2","Archon - Dev","Job Aid/Install Documentation");
			 archiveExecTemp[16] = new ArchiveExecutionGovernanceTemplateDetails("17","2","Archon - Test","Access to Archon Infrastructure");
			 archiveExecTemp[17] = new ArchiveExecutionGovernanceTemplateDetails("18","2","Archon - Test","Install Archon");
			 archiveExecTemp[18] = new ArchiveExecutionGovernanceTemplateDetails("19","2","Archon - Test","Test/Validation of Archon");
			 archiveExecTemp[19] = new ArchiveExecutionGovernanceTemplateDetails("20","2","Archon - Test","LDAP Integration");
			 archiveExecTemp[20] = new ArchiveExecutionGovernanceTemplateDetails("21","2","Archon - Test","Job Aid/Install Documentation");
			 archiveExecTemp[21] = new ArchiveExecutionGovernanceTemplateDetails("22","2","Archon - Prod","Access to Archon Infrastructure");
			 archiveExecTemp[22] = new ArchiveExecutionGovernanceTemplateDetails("23","2","Archon - Prod","Install Archon");
			 archiveExecTemp[23] = new ArchiveExecutionGovernanceTemplateDetails("24","2","Archon - Prod","Test/Validation of Archon");
			 archiveExecTemp[24] = new ArchiveExecutionGovernanceTemplateDetails("25","2","Archon - Prod","LDAP Integration");
			 archiveExecTemp[25] = new ArchiveExecutionGovernanceTemplateDetails("26","2","Archon - Prod","Job Aid/Install Documentation");
			 
			 archiveExecTemp[26] = new ArchiveExecutionGovernanceTemplateDetails("27","1","Intake Process / Methodology","");
			 archiveExecTemp[27] = new ArchiveExecutionGovernanceTemplateDetails("28","2","","Intake Workshop");
			 archiveExecTemp[28] = new ArchiveExecutionGovernanceTemplateDetails("29","2","","Define Organizational structure");
			 archiveExecTemp[29] = new ArchiveExecutionGovernanceTemplateDetails("30","2","","Define characteristics of Opportunity Management");
			 archiveExecTemp[30] = new ArchiveExecutionGovernanceTemplateDetails("31","2","","Triage");
			 archiveExecTemp[31] = new ArchiveExecutionGovernanceTemplateDetails("32","2","","Assessment");
			 archiveExecTemp[32] = new ArchiveExecutionGovernanceTemplateDetails("33","2","","Legal (retention) Review");
			 archiveExecTemp[33] = new ArchiveExecutionGovernanceTemplateDetails("34","2","","Financial Models, Cost Benefit Analysis");
			 archiveExecTemp[34] = new ArchiveExecutionGovernanceTemplateDetails("35","2","","Finance & ROI Measurement");
			 archiveExecTemp[35] = new ArchiveExecutionGovernanceTemplateDetails("36","2","","Plan and Prioritize; Estimation");
			 archiveExecTemp[36] = new ArchiveExecutionGovernanceTemplateDetails("37","2","","Deliverables - Process flow, Templates, Recommendations");
			 archiveExecTemp[37] = new ArchiveExecutionGovernanceTemplateDetails("38","2","","Applications Intake assessment, Define Waves, Implementation Roadmap for 19 In-scope applications");
			 
			 archiveExecTemp[38] = new ArchiveExecutionGovernanceTemplateDetails("39","1","Archive Implementation","");
			 archiveExecTemp[39] = new ArchiveExecutionGovernanceTemplateDetails("40","2","OppurtunityName � Allscripts","Requirements Gathering");
			 archiveExecTemp[40] = new ArchiveExecutionGovernanceTemplateDetails("41","2","OppurtunityName � Allscripts","Requirements Documentation/Approval");
			 archiveExecTemp[41] = new ArchiveExecutionGovernanceTemplateDetails("42","2","OppurtunityName � Allscripts","Technical Design Document");
			 archiveExecTemp[42] = new ArchiveExecutionGovernanceTemplateDetails("43","2","OppurtunityName � Allscripts","Technical Design Documentation/Approval");
			 archiveExecTemp[43] = new ArchiveExecutionGovernanceTemplateDetails("44","2","OppurtunityName � Allscripts","Archon - Source system connectivity");
			 archiveExecTemp[44] = new ArchiveExecutionGovernanceTemplateDetails("45","2","OppurtunityName � Allscripts","Data Archive in Test Environment");
			 archiveExecTemp[45] = new ArchiveExecutionGovernanceTemplateDetails("46","2","OppurtunityName � Allscripts","Screens Configuration in Test Environment");
			 archiveExecTemp[46] = new ArchiveExecutionGovernanceTemplateDetails("47","2","OppurtunityName � Allscripts","Perform System Testing");
			 archiveExecTemp[47] = new ArchiveExecutionGovernanceTemplateDetails("48","2","OppurtunityName � Allscripts","System Test Documentation/Results Approval");
			 archiveExecTemp[48] = new ArchiveExecutionGovernanceTemplateDetails("49","2","OppurtunityName � Allscripts","UAT Testing");
			 archiveExecTemp[49] = new ArchiveExecutionGovernanceTemplateDetails("50","2","OppurtunityName � Allscripts","UAT Signoff");
			 archiveExecTemp[50] = new ArchiveExecutionGovernanceTemplateDetails("51","2","OppurtunityName � Allscripts","Production implementation - Data Archival");
			 archiveExecTemp[51] = new ArchiveExecutionGovernanceTemplateDetails("52","2","OppurtunityName � Allscripts","Production implementation - Screens configuration");
			 archiveExecTemp[52] = new ArchiveExecutionGovernanceTemplateDetails("53","2","OppurtunityName � Allscripts","Production implementation - Users configuration");
			 archiveExecTemp[53] = new ArchiveExecutionGovernanceTemplateDetails("54","2","OppurtunityName � Allscripts","Production implementation - Retention configuration");
			 archiveExecTemp[54] = new ArchiveExecutionGovernanceTemplateDetails("55","2","OppurtunityName � Allscripts","Chain of Custody validation/documentation");
			 archiveExecTemp[55] = new ArchiveExecutionGovernanceTemplateDetails("56","2","OppurtunityName � Allscripts","Chain of Custody documentation approval");
			 archiveExecTemp[56] = new ArchiveExecutionGovernanceTemplateDetails("57","2","OppurtunityName � Allscripts","Implementation Signoff");
			
			 archiveExecTemp[57] = new ArchiveExecutionGovernanceTemplateDetails("58","1","Closure","");
			 archiveExecTemp[58] = new ArchiveExecutionGovernanceTemplateDetails("59","2","","Warranty Support - 6 Weeks");
			 archiveExecTemp[59] = new ArchiveExecutionGovernanceTemplateDetails("60","2","","Stakeholder Communication");
			 archiveExecTemp[60] = new ArchiveExecutionGovernanceTemplateDetails("61","2","","Lessons Learned");
			 archiveExecTemp[61] = new ArchiveExecutionGovernanceTemplateDetails("62","2","","Project Close Check List");
			 archiveExecTemp[62] = new ArchiveExecutionGovernanceTemplateDetails("63","2","","Final Finances and Invoices");
			 
			 for ( int index = 0; index<archiveExecTemp.length; index++) {
				 
				 String archiveExecTemp_InsertQuery = "insert into Archive_Execution_Governance_Template_Info (seq_no, level, taskGroup, taskName, taskType, majorDependencies, assignedTo, planSrt, planEnd, actSrt, actEnd, completion, status, remark)"
						 									+"value(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				 PreparedStatement prestmt = con.prepareStatement(archiveExecTemp_InsertQuery);
		          prestmt.setString(1, archiveExecTemp[index].seq_no);
				  prestmt.setString(2, archiveExecTemp[index].level);
				  prestmt.setString(3, archiveExecTemp[index].taskGroup);
				  prestmt.setString(4, archiveExecTemp[index].taskName);
				  prestmt.setString(5, "");
				  prestmt.setString(6, "");
				  prestmt.setString(7, "");
				  prestmt.setString(8, "");
				  prestmt.setString(9, "");
				  prestmt.setString(10, "");
				  prestmt.setString(11, "");
				  prestmt.setString(12, "");
				  prestmt.setString(13, "");
				  prestmt.setString(14, "");
				  prestmt.execute();
			 }
			 
		 }
	 }
	 
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	 	 
 }
	
 public void archiveTemplateToArchiveInfo(String waveName) {
	 
	 try {
	
		// to insert records until archive implementation
		 String SelectQuery = "select * from Archive_Execution_Governance_Template_Info where seq_no < 39 order by seq_no";
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery(SelectQuery);
			
			int number = 0, decimalNumber = 1;
			
			while(rs1.next()) {
				//String taskId = generateTaskId();
				String taskId = "";
				if(rs1.getString(2).equals("1")) {
					number++;
					taskId =  number+"";
					decimalNumber = 1;
				}
				else {
					taskId =number+"."+((decimalNumber<10)?"0"+decimalNumber:decimalNumber);
					decimalNumber++;
				}
				
				InsertRecord(rs1, waveName, taskId, "");		
			}
			st1.close();
			rs1.close();
			
			String apps = "";
			String selectQuery1 = "select * from governance_info where waveId = '"+Id+"' and column_name = 'apps';";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(selectQuery1);
			if(rs.next())
			{
				apps = rs.getString("value");
			}
	
			String [] appNames = apps.split(",");
			for(String app : appNames) {
				String SelectQuery2 = "select * from Archive_Execution_Info where taskGroup = 'Archive Implementation' and oppName='"+app+"' order by seq_no";
				Statement st2 = con.createStatement();
				ResultSet rs2 = st2.executeQuery(SelectQuery2);
				
				boolean matchFlag = true;
				if(rs2.next())
				{
					int fromSeqNum = rs2.getInt(1);
					String selectQuery4 = "select * from Archive_Execution_Info where seq_no>="+fromSeqNum+" and oppName='"+app+"' order by seq_no;" ;
					Statement st4= con.createStatement();
					ResultSet rs4 = st4.executeQuery(selectQuery4);
					boolean firstRow = true;
					
				while(rs4.next()) {
					
					//String taskId = generateTaskId();
					
					String taskId = "";
					
					if(!matchFlag&&rs4.getString(4).equals("1"))
						break;
					
					if(rs4.getString(4).equals("1")&&matchFlag) {
						number++;
						taskId =  number+"";
						decimalNumber = 1;
					}
					else {
						taskId =number+"."+((decimalNumber<10)?"0"+decimalNumber:decimalNumber);
						decimalNumber++;
					}
					
					InsertRecordFromInfo(rs4, waveName, taskId,app);
					
					matchFlag = false;
					
				}
				rs4.close();
				st4.close();
				}
				st2.close();
				rs2.close();
			}
			st.close();
			rs.close();
			
			// to insert records till the end
			
			String SelectQuery3 = "select * from Archive_Execution_Governance_Template_Info where seq_no > 57 order by seq_no";
				Statement st3 = con.createStatement();
				ResultSet rs3 = st3.executeQuery(SelectQuery3);
				while(rs3.next()) {
					//String taskId = generateTaskId();
					String taskId = "";
					if(rs3.getString(2).equals("1")) {
						number++;
						taskId =  number+"";
						decimalNumber = 1;
					}
					else {
						taskId =number+"."+((decimalNumber<10)?"0"+decimalNumber:decimalNumber);
						decimalNumber++;
					}
					InsertRecord(rs3, waveName, taskId, "");	
					
				}
				
				st3.close();
				rs3.close();

			
	 }
	 
	 catch(Exception e) {
		 e.printStackTrace();
	 }
	
 }

 
private void InsertRecordFromInfo(ResultSet rs1,String waveName, String taskId, String appName) throws SQLException {
	 
	 String taskGroup = ("Archive Implementation".equals(rs1.getString(6))?"Archive Implementation - "+ appName: rs1.getString(6));
	 String template_InsertQuery = "insert into Archive_Execution_Governance_Info (seq_no, waveId, waveName, level, taskId, taskGroup, taskName, taskType, majorDependencies, assignedTo, planSrt, planEnd, actSrt, actEnd, completion, status, remark)"
				+"value(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

PreparedStatement prestmt = con.prepareStatement(template_InsertQuery);
prestmt.setInt(1, seqNo);
prestmt.setString(2, Id);
prestmt.setString(3, waveName);
prestmt.setString(4, rs1.getString("level"));
prestmt.setString(5, taskId);
prestmt.setString(6, taskGroup);
prestmt.setString(7, rs1.getString(7));
prestmt.setString(8, rs1.getString(8));
prestmt.setString(9, rs1.getString(9));
prestmt.setString(10, rs1.getString(10));
prestmt.setString(11, rs1.getString(11));
prestmt.setString(12, rs1.getString(12));
prestmt.setString(13, rs1.getString(13));
prestmt.setString(14, rs1.getString(14));
prestmt.setString(15, rs1.getString(15));
prestmt.setString(16, rs1.getString(16));
prestmt.setString(17, rs1.getString(17));
prestmt.execute();
seqNo++;

}

 
 private void InsertRecord(ResultSet rs1,String waveName, String taskId, String appName) throws SQLException {
	 
	 String taskGroup = ("Archive Implementation".equals(rs1.getString(3))?"Archive Implementation - "+ appName: rs1.getString(3));
	 String template_InsertQuery = "insert into Archive_Execution_Governance_Info (seq_no, waveId, waveName, level, taskId, taskGroup, taskName, taskType, majorDependencies, assignedTo, planSrt, planEnd, actSrt, actEnd, completion, status, remark)"
				+"value(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

PreparedStatement prestmt = con.prepareStatement(template_InsertQuery);
prestmt.setInt(1, seqNo);
prestmt.setString(2, Id);
prestmt.setString(3, waveName);
prestmt.setString(4, rs1.getString("level"));
prestmt.setString(5, taskId);
prestmt.setString(6, taskGroup);
prestmt.setString(7, rs1.getString(4));
prestmt.setString(8, rs1.getString(5));
prestmt.setString(9, rs1.getString(6));
prestmt.setString(10, rs1.getString(7));
prestmt.setString(11, rs1.getString(8));
prestmt.setString(12, rs1.getString(9));
prestmt.setString(13, rs1.getString(10));
prestmt.setString(14, rs1.getString(11));
prestmt.setString(15, rs1.getString(12));
prestmt.setString(16, rs1.getString(13));
prestmt.setString(17, rs1.getString(14));
prestmt.execute();
seqNo++;
 }
 public void getDataRetrieveBasedOnApps() {
	 try {
		 
		 String selectNodeQuery = "select * from Archve_Execution_Governance_Info order by seq_no";
		 Statement st1 = con.createStatement();
		 ResultSet rs1 = st1.executeQuery(selectNodeQuery);
		 while(rs1.next()) {
			 String taskGroup = "";
			 String taskName = "";
			 int level = rs1.getInt("level");
			 if(level == 1) {
        		 taskGroup = rs1.getString("taskGroup");
        		 
        	 }
        	 else {
        		 taskName = rs1.getString("taskName");
        	 }
		 
		 String apps[] = null;
		 String selectApps = "select * from Governance_Info where waveId='"+Id+"' and column_name = 'apps';";
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(selectApps);
		 if(rs.next()) 
			 apps = rs.getString("value").split(",");
		 rs.close();
		 st.close();
		 
         for(String app: apps) {
        	 if(level==1) {
        		 
        	 } else {
        		 
        	 }
		 }
	   }
	 }
	 catch(Exception e) {
		 e.printStackTrace();
	 }
 }
 public void ArchiveExecutionEditApplicationParentNode(String waveName)
 {
	 try
	 {
		String appNames = getAppNames();
		
	    int fromSeqNum = deleteAllArchiveImplementParentNode();
	    System.out.println();
	    int closureSeqNum = getClosureSeqNum(fromSeqNum,appNames);
	 
	    // to update correct seq_no
	    
	    //int appLength = (!appNames.equals(""))?0:appNames.split(",").length;
	    
	    updateClosureSeqNum(fromSeqNum,closureSeqNum);
	    
	    insertAppParentNodes(appNames, fromSeqNum, waveName);
	    updateTaskCount(waveName);
	    //updateSeqNum();
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
 }
 
 
 private void updateTaskCount(String waveName) {
	try {
		int number = 1;
		String selectQuery ="select * from Archive_Execution_Governance_Info where waveName='"+waveName+"' order by seq_no;";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(selectQuery);
		int levelCount = 0;
		while(rs.next()) {
			int level = rs.getInt("level");
			if(level==1) {
				levelCount++;
				number=1;
				if(levelCount != rs.getInt("level"))
					updateTaskId(String.valueOf(levelCount), rs.getString(1), waveName);
			}
			else if(!rs.getString("taskId").startsWith(String.valueOf(levelCount))) {
					String taskId = levelCount+".";
					if(String.valueOf(number).length()==1)
					taskId += "0"+number;
					else
					taskId += number;
					updateTaskId(taskId,rs.getString(1),waveName);
					number++;				
			}
		}
		st.close();
		rs.close();
	}
	catch(Exception e) {
		e.printStackTrace();
	}
}

private void updateTaskId(String taskId, String seq_no, String waveName) {
	
	try {
		String updateQuery = "update Archive_Execution_Governance_Info set taskId = '"+taskId+"' where waveName = '"+waveName+"' and seq_no = '"+seq_no+"'";
		Statement st1 = con.createStatement();
		st1.executeUpdate(updateQuery);
		st1.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}

private int getClosureSeqNum(int fromSeqNum, String appNames) {
	int seqNum = 0;
	
	try {
		String apps[] = appNames.split(",");
	  for(String app : apps ) {
		  int ArchiveSeqNum = getArchiveImplementationSeqNum(app);
		  String selectQuery ="select * from Archive_Execution_Info where oppName ='"+app+"' and seq_no>="+ArchiveSeqNum+" order by seq_no";
		  Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(selectQuery);
			boolean FirstRow = true;
			while(rs.next()) {
              if(rs.getInt(4)==1&&!FirstRow)
              {
            	  break;
              }
              seqNum++;
              FirstRow = false;
			
			}
			rs.close();
			st.close();
	  }
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return seqNum;
}

private int getArchiveImplementationSeqNum(String app) {
	int seqNum = 0;
	try {
		
		String selectQuery ="select * from Archive_Execution_Info where oppName ='"+app+"' and taskGroup = 'Archive Implementation'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(selectQuery);
		if(rs.next())
			seqNum= rs.getInt(1);
		rs.close();
		st.close();
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return seqNum;
}

//private void updateSeqNum() {
//	try {
//		
//		int rowCount = 1;
//		
//		String selectQuery = "select * from Archive_Execution_Governance_Info where waveId='"+Id+"' order by seq_no;";
//		Statement st = con.createStatement();
//		ResultSet rs = st.executeQuery(selectQuery);
//		
//		while(rs.next()) {
//			
//			if(rs.getInt(1)!=rowCount) {
//			  
//			  String updateQuery = "update Archive_Execution_Governance_Info set seq_no = "+rowCount+" where waveId='"+Id+"' and seq_no = "+rs.getInt(1);
//			  Statement st1 = con.createStatement();
//			  st1.executeUpdate(updateQuery);
//			  st1.close();
//			  
//			}
//			
//			rowCount++;
//		}
//		rs.close();
//		st.close();
//	}
//	catch(Exception e)
//	{
//		e.printStackTrace();
//	}
//	
//}

private String getAppNames() {
	String apps = "";
	try {
		String selectQuery = "select * from governance_Info where waveId = '"+Id+"' and column_name = 'apps';";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(selectQuery);
		
		if(rs.next()) {
			apps = rs.getString("value");
		}
		
		rs.close();
		st.close();
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return apps;
}

public void insertAppParentNodes(String appNames, int govSeqNum,String waveName)
 {
	 String[] appArr = appNames.split(",");
	 
	 Arrays.stream(appArr).forEach(app -> insertNode(app,govSeqNum,waveName));
	 
 }

 public void insertNode(String appName, int govSeqNum, String waveName)
 {
	 try
	 {
		 String appId = getApplicationIdByName(appName);
		 String selectQuery =  "select * from Archive_Execution_Info where oppId='"+appId+"' and taskGroup = 'Archive Implementation' order by seq_no;";
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(selectQuery);
		 int taskCount = getTaskCount(waveName);
		 boolean FirstRow = true;
		 if(FirstRow_Flag)
		 seqNo = govSeqNum;
		 int number = 0, decimalNumber = 1;
		 if(rs.next())
		 {
				String selectQuery1 = "select * from Archive_Execution_Info where oppId='"+appId+"' and seq_no>="+rs.getInt(1)+" order by seq_no;";
				Statement st1 = con.createStatement();
				ResultSet rs1 = st1.executeQuery(selectQuery1);
				
				while(rs1.next()) {
					System.out.println(rs1.getString("taskGroup"));
					 if(rs1.getInt("level") == 1 && !FirstRow)
						 break;
					 else {
						 String taskId = "";
						if(rs1.getString(4).equals("1")) {
							number++;
							taskId =  number+"";
							decimalNumber = 1;
						}
						else {
							taskId =number+"."+((decimalNumber<10)?"0"+decimalNumber:decimalNumber);
							decimalNumber++;
						}
						InsertRecordFromInfo(rs1, waveName, taskId, appName);
					 }
					 FirstRow = false;
				}
				rs1.close();
				st1.close();
				st1.close();
				
				 
				 FirstRow_Flag = false;
			 
		 }
		 
		 st.close();
		 rs.close();
		 
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
 }
 
 private int getTaskCount(String waveName) {
	int taskCount = 0;
	try {
		
		String selectQuery = "select * from Archive_Execution_Governance_info where waveName = '"+waveName+"' and level='1'  order by seq_no;";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(selectQuery);
		while(rs.next())
		{
		     if(rs.getString("taskGroup").equals("Intake Process / Methodology")) {
		    	 taskCount++;
		    	 break;
		     } else
		    	 taskCount++;	 
		}
		
		rs.close();
		st.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return taskCount;
}

private String getApplicationIdByName(String appName) {
	 String appId="";
	try {
		String selectQuery = "select * from opportunity_info where column_name = 'appName' and value = '"+appName+"';";
		Statement st= con.createStatement();
		ResultSet rs = st.executeQuery(selectQuery);
		if(rs.next())
		{
			appId=rs.getString("Id");
		}
		rs.close();
		st.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return appId;
}

public int deleteAllArchiveImplementParentNode()
 {
	 int seqNum = 0;
	 int toseqNum = 0;
	 try
	 { 
		 // to get from seq_no
		 String selectQuery1 = "select * from Archive_Execution_Governance_Info where waveId='"+Id+"' and taskGroup like 'Archive Implementation%' order by seq_no;";
		 Statement st = con.createStatement();
		 ResultSet rs = st.executeQuery(selectQuery1);
		 boolean firstRow = true;
		 if(rs.next())
			 seqNum = rs.getInt(1);
		 rs.close();
		 st.close();
		 
		 //to get to seq_no
		 String selectQuery3 = "select * from Archive_Execution_Governance_Info where waveId='"+Id+"' and taskGroup = 'Closure' order by seq_no;";
		 Statement st3 = con.createStatement();
		 ResultSet rs3 = st3.executeQuery(selectQuery3);
		 if(rs3.next())
			 toseqNum = rs3.getInt(1);
		 rs3.close();
		 st3.close();
		 
		// delete the row in between from and to seq_no
		String deleteQuery = "delete from Archive_Execution_Governance_Info where waveId = '"+Id+"' and seq_no >= "+seqNum+" and seq_no < "+toseqNum+" order by seq_no;";	
		Statement st2 =con.createStatement();
		st2.executeUpdate(deleteQuery);
		st2.close();
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 
	 return seqNum;
 }
 
 private void updateClosureSeqNum(int fromSeqNum,int seqNum) {
	try {
		
		String selectQuery = "select * from Archive_Execution_Governance_info where waveId='"+Id+"' and taskGroup = 'Closure' order by seq_no;";
	    Statement st = con.createStatement();
	    ResultSet rs = st.executeQuery(selectQuery);
	    //int appImpCount = 18 * appLength;
	    
	    while(rs.next()) {
	    	String selectQuery1 = "select * from Archive_Execution_Governance_info where waveId='"+Id+"' and seq_no >= "+rs.getInt(1)+" order by seq_no;";
		    Statement st1 = con.createStatement();
		    ResultSet rs1 = st1.executeQuery(selectQuery1);
		    
		    while(rs1.next()) {
	    	
		    String updateQuery = "update Archive_Execution_Governance_info set seq_no = "+(seqNum+fromSeqNum)+" where waveId='"+Id+"' and seq_no = "+rs1.getInt(1);
		    Statement st2 = con.createStatement();
		    st2.executeUpdate(updateQuery);
		    st2.close();
		    
		    seqNum++;
		    
		    }
		    
		    st1.close();
		    rs1.close();
	    }
	    
	    rs.close();
	    st.close();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
}

public String generateTaskId() throws SQLException {
		
		String uniqueID = "";
		boolean checkTermination = true;
		
		while(checkTermination) {
		
			uniqueID = UUID.randomUUID().toString();
			//System.out.println("Task Id : " + uniqueID);
			
			boolean checkDupilcateId = checkDuplicateTaskId(uniqueID);
		
			if(checkDupilcateId == false) {
				checkTermination = false;
				}
		}
		
		return uniqueID;
	}
		
	public boolean checkDuplicateTaskId(String uniqueID) throws SQLException {
		
		boolean checkDuplicate = false;
		
		String selectQuery = "select * from Archive_Execution_Info order by seq_no;";
		Statement state = con.createStatement();
		ResultSet result = state.executeQuery(selectQuery);
		
		while(result.next()) {
			String checkTaskId = result.getString("taskId");
			if(checkTaskId == uniqueID) {
				checkDuplicate = true;
			}	
		}
		return checkDuplicate;
	}
 
	protected void finalize() throws Throwable 
    { 
		System.out.println("Db connection closed.");
        con.close();
    }
	
	

}
