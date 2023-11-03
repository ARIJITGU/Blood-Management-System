<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name").toUpperCase();
    String father=request.getParameter("father").toUpperCase();
    String mother=request.getParameter("mother").toUpperCase();
    String mobilenumber=request.getParameter("mobilenumber");
    String gender=request.getParameter("gender").toUpperCase();
    String email=request.getParameter("email");
    String bloodgroup=request.getParameter("bloodgroup").toUpperCase();
    String address=request.getParameter("address").toUpperCase();
    try
    {
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?)");
    ps.setString(1, id);
    ps.setString(2, name);
    ps.setString(3, father);
    ps.setString(4, mother);
    ps.setString(5, mobilenumber);
    ps.setString(6, gender);
    ps.setString(7, email);
    ps.setString(8, bloodgroup);
    ps.setString(9, address);
    ps.executeUpdate();
    response.sendRedirect("addNewDonor.jsp?msg=valid");
}catch(Exception e)
{response.sendRedirect("addNewDonor.jsp?msg=invalid");
  e.printStackTrace();  }
%>