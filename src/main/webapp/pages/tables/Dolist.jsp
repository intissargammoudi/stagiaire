<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
  <%@ page import="model.Stagiaires"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jwt","root", "");
List<Stagiaires> users = new ArrayList<Stagiaires>();
try {
    Statement statement = con.createStatement();
    ResultSet rs = statement.executeQuery("select * from stagiaires");
    while (rs.next()) {
     Stagiaires s = new Stagiaires();
       s.setFirstname(rs.getString("firstname"));
       s.setLastname(rs.getString("lastname"));
       s.setEmail(rs.getString("email"));
       s.setSujet(rs.getString("sujet"));
       s.setDb_stage(rs.getString("db_stage"));
       s.setDfin(rs.getString("dfin"));
       s.setDtn(rs.getString("dtn"));
       s.setEncadreur(rs.getString("encadreur"));
        users.add(s);
    }
} catch (SQLException e) {
    e.printStackTrace();
}
session.setAttribute("list", users);
response.sendRedirect("liste.jsp");
 


%>