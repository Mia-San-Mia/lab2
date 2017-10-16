package wz.lab2;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateBookAction extends ActionSupport {
    private String ISBN;
    private String authorID;
    private String publisher;
    private String publishDate;
    private double price;
    
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    
    public void setAuthorID(String authorID) {
        this.authorID = authorID;
    }
    
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    
    public void setPublishDate(String publishDate) { 
        this.publishDate = publishDate;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }
    
    public String execute() throws Exception {
    	Connection con = ConnectMYsql.generateConnection();
    	try {
    		Statement statement = con.createStatement();
    		if (authorID != null) {
    			String sql1 = "update book set AuthorID = \"" + authorID + "\" where ISBN = '" + ISBN + "'";
    			statement.executeUpdate(sql1);
    		}
    		if (publisher != null) {
    			String sql2 = "update book set Publisher = \"" + publisher + "\" where ISBN = '" + ISBN + "'";
    			statement.executeUpdate(sql2);
    		}
    		if (publishDate != null) {
    			String sql3 = "update book set PublishDate = \"" + publishDate + "\" where ISBN = '" + ISBN + "'";
    			statement.executeUpdate(sql3);
    		}
    		if (price != 0.00) {
    			String sql4 = "update book set Price = " + price + " where ISBN = '" + ISBN + "'";
    			statement.executeUpdate(sql4);
    		}
    		
    		if (authorID != null) {
    			String sql5 = "select * from author where AuthorID = " + "\"" + authorID + "\"";
    			ResultSet result = statement.executeQuery(sql5);
                if (!result.first()) {
                    return "unfinished";
                }
    		}
    		con.close();
    	} catch (Exception e) {
    		e.printStackTrace();
    		return "failed";
    	}
    	return "finished";
    }
}
