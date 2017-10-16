package wz.lab2;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectMYsql {
	public static Connection generateConnection() {
		Connection con = null;
		/*String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/lab2";
		String username = "root";
		String password = "wzdgws";*/
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3306/app_wz1150310212lab2";
		String username = "j4520ly04j";
		String password = "z0lmhxm0mxj50kk2k0ml2k3hz1x3ixzlymhmki3k";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
