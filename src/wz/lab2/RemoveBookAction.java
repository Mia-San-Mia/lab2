package wz.lab2;
import java.sql.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

public class RemoveBookAction extends ActionSupport {
	private String ISBN;
	private String name;
	private ArrayList<String> books = new ArrayList<>();
	
	public String getISBN() {
		return this.ISBN;
	}
	
	public void setISBN(String ISBN) {
		this.ISBN = ISBN;
	}
	
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
			String authorID = null;
			
			//根据ISBN找到对应AuthorID
			String sq1 = "select * from book where ISBN = " + "\"" + ISBN + "\"";
			ResultSet result = statement.executeQuery(sq1);
			if (result.first()) {
				authorID = result.getString("AuthorID");
			}
			
			//根据ISBN删除图书信息
			String sq2 = "delete from book where ISBN = " + "\"" + ISBN + "\"";
			statement.executeUpdate(sq2);
			
			//根据AuthorID找到作者名
			String sq3 = "select * from author where AuthorID = " + "\"" + authorID + "\"";
			result = statement.executeQuery(sq3);
			if (result.first()) {
				name = result.getString("Name");
			}
			
			//根据AuthorID找到该作者所著的图书
			String sq4 = "select * from book where AuthorID = " + "\"" + authorID + "\"";
			result = statement.executeQuery(sq4);
			while (result.next()) {
				books.add(result.getString("Title"));
			}
			
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
}
