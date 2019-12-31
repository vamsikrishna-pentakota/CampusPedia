package cpbeans;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.*;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

import database.DatabaseConnection;

public class EnterQuestionCP {
	public static int enterQuestion(String qid, String year, String sem,
			String reg, String subname,String questype,String question) throws Exception {

		int count = 0;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DatabaseConnection.getConnection();
			ps = con.prepareStatement("insert into QUESTIONBANK values(?,?,?,?,?,?,?)");

			{
		
				ps.setString(1, qid);
				ps.setString(2, year);
				ps.setString(3, sem);
				ps.setString(4, reg);
				ps.setString(5, subname);
				ps.setString(6, questype);
				ps.setString(7, question);
				
				

				count = ps.executeUpdate();

			}

		} catch (Exception ex) {
			System.out.println("Here is the fault");
			System.out.println(ex.getLocalizedMessage());
			return count = 99;

		}
		// System.out.println("Returned count");
		return count;
	}
	
	
	public static int enterQuestionWithString(String qstring, String subject, String question, String status, String rating) throws Exception {

		int count = 0;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DatabaseConnection.getConnection();
			ps = con.prepareStatement("insert into QBANK values(?,?,?,?,?)");

			{
		
				ps.setString(1, qstring);
				ps.setString(2, subject);
				ps.setString(3, question);
				ps.setString(4, status);
				ps.setString(5, rating);
				
				
				

				count = ps.executeUpdate();

			}

		} catch (Exception ex) {
			System.out.println("Here is the fault");
			System.out.println(ex.getLocalizedMessage());
			return count = 99;

		}
		// System.out.println("Returned count");
		return count;
	}
	
	
	public static ResultSet getQuestionWithString(String qstring, String subject) throws Exception {

		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {

			con = DatabaseConnection.getConnection();
			ps = con.prepareStatement("select QUESTION from QBANK where SUBJECT = ? and QSTRING = ?");

			{
		
				ps.setString(1, qstring);
				ps.setString(2, subject);
				
				
				rs = ps.executeQuery();

			}
             
		} catch (Exception ex) {
			System.out.println("Here is the fault");
			System.out.println(ex.getLocalizedMessage());
			return null;

		}
		// System.out.println("Returned count");
		return rs;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static int makePdf() throws Exception{
	   
        int stat = 0;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = null;
		Statement st = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ListItem li = null;
		try {

			con = DatabaseConnection.getConnection();
			ps = con.prepareStatement("select * from QUESTIONBANK where QTYP = ?");
			
			ps.setString(1,"16");
			
			rs = ps.executeQuery();
	
			
      

            OutputStream file = new FileOutputStream(new File("D:\\paper13Feb.pdf"));
	          Document document = new Document();
	          PdfWriter.getInstance(document, file);

			
		      
		         document.open();//PDF document opened........			       

					

					document.add(Chunk.NEWLINE);   //Something like in HTML :-)
                 
                 document.add(new Paragraph("                 VIGNAN'S INSTITUTE OF INFORMATION TECHNOLOGY:: VISAKHAPATNAM"));
	             document.add(new Paragraph("IV-II SEM                                                     MID EXAMINATION \u0332                                            SET 1"));	
                 document.add(new Paragraph("                                                                         Subject: "));
                 document.add(new Paragraph("Name of Faculty:"));
                 document.add(new Paragraph("=========================================================================="));
                 document.add(new Paragraph("Answer all FOUR of the following:                                                                           Duration: 2Hrs\n                                                                                                                        Max. Marks: 40 Marks"));
                 
			
					document.add(Chunk.NEWLINE);   //Something like in HTML :-)							    
					 List list=new List(true,30);
					while(rs.next()){
				         
				       li = new ListItem(rs.getString(7)); // Static questions.......  this logic must be changed
					   //   list.add(new ListItem("que 2"));
					   //   list.add(new ListItem("que 3"));		        
					           //In the new page we are going to add list
				       list.add(li);
			}
					
					
							document.add(list); 
		         document.close();

			             file.close();

          System.out.println("Pdf created successfully..");

	
			
		return stat =  1;	
			
			

		} catch (Exception ex) {
			System.out.println("Here is the fault");
			System.out.println(ex.getLocalizedMessage());
		  return stat = 99;	
		}
		// System.out.println("Returned count");
		

	    }
	    
	   
}
