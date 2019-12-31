package cpbeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cpbeans.AccesserCP;
import database.DatabaseConnection;

public class LoginCP {

	public static AccesserCP loginCP(String userid, String upwd) throws Exception {
		AccesserCP a = new AccesserCP();
		String password = "";
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DatabaseConnection.getConnection();
			ps = con.prepareStatement("select UPWD from KEYS where USERID=?");

			ps.setString(1, userid);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				password = rs.getString(1);
				//System.out.println(password);
			}
			System.out.println(upwd);
			if (password.equals(upwd)) { // if query executed successfully

				a.setUserid(userid);
				return a;

			}

			else
				return null;

		} catch (Exception ex) {
			System.out.println("Error is " + ex.getMessage());
			return null;
		} finally {
			DatabaseConnection.close(ps);
			DatabaseConnection.close(con);
		}

	} // end of login()

}
