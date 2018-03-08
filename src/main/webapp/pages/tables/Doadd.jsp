<%@ page import="java.sql.*"%>
<%@ page import="model.Stagiaires"%>
<%
String firstname= request.getParameter("firstname" );
String lastname  =request.getParameter("lastname" );	
String dtn = request.getParameter("dtn" );
String db_stage=  request.getParameter("db_stage" );
String dfin  =request.getParameter("dfin" );
String email = request.getParameter("email" );
String encadreur  =request.getParameter("encadreur" );
String sujet = request.getParameter("sujet" );
Stagiaires s = new Stagiaires(firstname,lastname,dtn,db_stage,dfin,email,encadreur,sujet);

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jwt",
            "root", "");
    try {
        PreparedStatement preparedStatement = con.prepareStatement("insert into stagiaires(firstname,lastname,dtn,db_stage,dfin,email,encadreur,sujet) values (?, ?, ?, ?,?,?,?,? )");
        // Parameters start with 1
        preparedStatement.setString(1,s.getFirstname()  );
        preparedStatement.setString(2,s.getLastname() );
        preparedStatement.setString(3, s.getDtn());
        preparedStatement.setString(4, s.getDb_stage());
        preparedStatement.setString(5,s.getDfin() );
        preparedStatement.setString(6, s.getEmail());
        preparedStatement.setString(7, s.getEncadreur() );
        preparedStatement.setString(8, s.getSujet() );
        preparedStatement.executeUpdate();

    } catch (SQLException e) {
        e.printStackTrace();
    }

    response.sendRedirect("Dolist.jsp");
  
%>