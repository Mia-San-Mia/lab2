package wz.lab2;
import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;

public class AddBookAction extends ActionSupport {
    private String ISBN;
    private String title;
    private String authorID;
    private String publisher;
    private String publishDate;
    private double price;
    
    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    
    public void setTitle(String title) {
        this.title = title;
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
            String sql1 = "insert into book (ISBN, Title, AuthorID, Publisher, PublishDate, Price) values ('"
                + ISBN + "', '" 
            	+ title + "', '" 
                + authorID + "', '" 
            	+ publisher + "',' "
                + publishDate + "', "
                + price + ")";
            statement.executeUpdate(sql1);
            String sql2 = "select * from author where AuthorID = \"" + authorID + "\"";
            ResultSet result = statement.executeQuery(sql2);
            if (!result.first()) {
                return "unfinished";
            }
            
            con.close();
        } catch (Exception e) {
            return "failed";
        }
        return "finished";
    }
}
