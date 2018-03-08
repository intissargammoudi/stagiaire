 <%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
  <%@ page import="model.Stagiaires"%>
  <%   Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jwt","root", "");
 String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            String email =  request.getParameter("email" );
            { try {
                PreparedStatement preparedStatement = con.prepareStatement("delete from stagiaires where email=?");
                // Parameters start with 1
                preparedStatement.setString(1, email);
                preparedStatement.executeUpdate();

            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("Dolist.jsp");
            }  
        } 
        
          else if (action.equalsIgnoreCase("edit")){

              String email =  request.getParameter("email" );
              
              //getuserbyid
              Stagiaires s = new Stagiaires();
        try {
            PreparedStatement preparedStatement = con.
                    prepareStatement("select * from stagiaires where email=?");
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
            	 s.setFirstname(rs.getString("firstname"));
                 s.setLastname(rs.getString("lastname"));
                 s.setEmail(rs.getString("email"));
                 s.setSujet(rs.getString("sujet"));
                 s.setDb_stage(rs.getString("db_stage"));
                 s.setDfin(rs.getString("dfin"));
                 s.setDtn(rs.getString("dtn"));
                 s.setEncadreur(rs.getString("encadreur"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Stagiaires stag =s;
        
            session.setAttribute("stag", stag);
            response.sendRedirect("update.jsp");
             
       
        } else { response.sendRedirect("liste.jsp");
        }
    %>