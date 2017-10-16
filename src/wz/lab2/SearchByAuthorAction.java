package wz.lab2;
import java.sql.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

public class SearchByAuthorAction extends ActionSupport {
	private String name;
	private ArrayList<String> books = new ArrayList<>();
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public ArrayList<String> getBooks() {
		return this.books;
	}
	
	public String execute() throws Exception {
		Connection con = ConnectMYsql.generateConnection();
		try {
			Statement statement = con.createStatement();
			String sql1 = "select * from author";
			ResultSet result = statement.executeQuery(sql1);
			String AuthorID = null;
			/*search from table author*/
			while (result.next()) {
				if (name.equals(result.getString("Name"))) {
					AuthorID = result.getString("AuthorID");
					break;
				}
			}
			/*search from table book*/
			if (AuthorID != null) {
				String sql2 = "select * from book";
				result = statement.executeQuery(sql2);
				while (result.next()) {
					if (AuthorID.equals(result.getString("AuthorID"))) {
						books.add(result.getString("Title"));
					}
				}
				con.close();
				return "success";
			} else {
				con.close();
				return "fail";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
}
