package wz.lab2;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;

public class ShowBookDetailAction extends ActionSupport {
	private String title = null;
	
	private String ISBN;
	private String authorID;
	private String publisher;
	private String publishDate;
	private double price;
	
	private String name;
	private int age;
	private String country;
	
	public String getTitle() {
		return this.title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getISBN() {
		return this.ISBN;
	}
	
	public String getAuthorID() {
		return this.authorID;
	}
	
	public String getPublisher() {
		return this.publisher;
	}
	
	public String getPublishDate() {
		return this.publishDate;
	}
	
	public double getPrice() {
		return this.price;
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getAge() {
		return this.age;
	}
	
	public String getCountry() {
		return this.country;
	}
	
	public String execute() throws Exception {
		Connection con = ConnectMYsql.generateConnection();
		System.out.println(title);
		try {
			Statement statement = con.createStatement();
			String sql1 = "select * from book";
			ResultSet result = statement.executeQuery(sql1);
			while (result.next()) {
				/*去掉左右的空格比较*/
				if (title.trim().equals(result.getString("Title").trim())) {
					ISBN = result.getString("ISBN");
					authorID = result.getString("AuthorID");
					publisher = result.getString("Publisher");
					publishDate = result.getString("PublishDate");
					price = result.getDouble("price");
				}
			}
			String sql2 = "select * from author";
			result = statement.executeQuery(sql2);
			while (result.next()) {
				if (authorID.equals(result.getString("AuthorID"))) {
					name = result.getString("Name");
					age = result.getInt("Age");
					country = result.getString("Country");
				}
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
}
