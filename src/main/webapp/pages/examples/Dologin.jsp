<%@ page import="java.sql.*"%>
<%
    String email = request.getParameter("email");    
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jwt",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where email='" + email + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userid", email);
        response.sendRedirect("../tables/Dolist.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>