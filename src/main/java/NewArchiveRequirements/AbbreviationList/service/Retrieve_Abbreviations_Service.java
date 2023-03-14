package NewArchiveRequirements.AbbreviationList.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import onboard.DBconnection;
public class Retrieve_Abbreviations_Service {
    public JsonArray retrieve_abbreviations(String id) {
    	PreparedStatement st=null;
    	ResultSet rs=null;
        JsonArray jsonArray = new JsonArray();
    try {
        //String random_id = generateRandomApprovalId();
        DBconnection dBconnection = new DBconnection();
        Connection connection = (Connection) dBconnection.getConnection();
        System.out.println("Connected...");
        String selectQuery = "select seq_no,app_id,abbreviation_acronym,description from archivereq_abbreviations_info_details where app_id=?";
        st = connection.prepareStatement(selectQuery);
        st.setString(1,id);
        rs = st.executeQuery();
        while(rs.next())
        {
            JsonObject jsonObj = new JsonObject();
            jsonObj.addProperty("seq_no",rs.getString(1));
            jsonObj.addProperty("app_id",rs.getString(2));
            jsonObj.addProperty("abbreviation_acronym",rs.getString(3));
            jsonObj.addProperty("description",rs.getString(4));
            jsonArray.add(jsonObj);
            System.out.println("JSON ARRAY:"+jsonArray);
       }
        st.close();
        rs.close();
    }
catch(Exception e)
    {
    System.out.println("Exception Occurs");
    }
    System.out.println("JSON"+jsonArray);
    return jsonArray;
}


}
