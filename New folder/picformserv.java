//picformserv.java



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class picformserv extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // Apache Commons-Fileupload library classes
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload sfu  = new ServletFileUpload(factory);

            if (! ServletFileUpload.isMultipartContent(request)) {
                System.out.println("sorry. No file uploaded");
                return;
            }

            // parse request
            List items = sfu.parseRequest(request);
            FileItem  id = (FileItem) items.get(0);
            String nm =  id.getString();
            
            FileItem title = (FileItem) items.get(1);
            String   fn =  title.getString();

              FileItem title1 = (FileItem) items.get(2);
            String   email =  title1.getString();
            
             // FileItem title2 = (FileItem) items.get(3);
            //String   age =  title2.getString();
            
              FileItem title3= (FileItem) items.get(3);
             String   pass=  title3.getString();
             
             FileItem title4 = (FileItem) items.get(4);
            String   gn=  title4.getString();
            
             
             FileItem title5 = (FileItem) items.get(5);
            String   ag=  title5.getString();
            
             FileItem title6 = (FileItem) items.get(6);
            String   loc=  title6.getString();
            
            
             FileItem title7= (FileItem) items.get(7);
            String   uid=  title7.getString();
            // get uploaded file
           FileItem file= (FileItem) items.get(8);
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            try (Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr")) {
                con.setAutoCommit(false);
                
                PreparedStatement ps = con.prepareStatement("insert into picform values(?,?,?,?,?,?,?,?,?)");
                ps.setString(1, nm);
                ps.setString(2, fn);
                ps.setString(3,email);
                ps.setString(4, pass);
                ps.setString(5, gn);
                ps.setString(6, ag);
                ps.setString(7,loc);
                ps.setString(8, uid);
                // size must be converted to int otherwise it results in error
                ps.setBinaryStream(9, file.getInputStream(), (int) file.getSize());
                ps.executeUpdate();
                con.commit();
                }
            out.print("insrt");
            //out.println("Photo Added Successfully. <p> <a href='listphotos'>List Photos </a>");
        }
        catch(IOException | ClassNotFoundException | SQLException | FileUploadException ex) {
           out.println( "Error --> " + ex.getMessage());
        }
    }
   
}
