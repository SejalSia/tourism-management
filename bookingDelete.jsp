<%-- 
    Document   : bookingDelete
    Created on : 5 Apr, 2024, 9:13:27 PM
    Author     : Sejal
--%>

<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>


<%
String idnum = request.getParameter("idnum");
Connection conn = null;
PreparedStatement psDelete = null;

try {
     Class.forName("org.apache.derby.jdbc.ClientDriver");
        conn = DriverManager.getConnection("jdbc:derby://localhost:1527/tms","tms","tms");
    
    // Prepare SQL statement for deleting request from requested table
    String deleteQuery = "DELETE FROM booking WHERE idnum=?";
    
           psDelete = conn.prepareStatement(deleteQuery);
    // Set the request_id parameter for the delete statement
    psDelete.setString(1, request.getParameter("idnum"));
    
//    psDelete.setString(2, request.getParameter("phn"));
//    psDelete.setString(3, request.getParameter("email"));
//    psDelete.setString(4, request.getParameter("location"));
//    psDelete.setString(5, request.getParameter("airport"));
//    psDelete.setString(6, request.getParameter("month"));
//    psDelete.setInt(7, Integer.parseInt("adultsno"));
//    psDelete.setInt(8, Integer.parseInt("childno"));
//    psDelete.setString(9, request.getParameter("idnum"));
    
          
         response.sendRedirect("viewallbooking.jsp");
    } else {
        out.println("Failed to delete request.");
    }
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    // Close resources in finally block
    try {
        if (psDelete != null) psDelete.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>