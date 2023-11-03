<%
    String username = request.getParameter("username").toLowerCase();
    String password=request.getParameter("password").toLowerCase();
    if("admin".equals(username) && "admin".equals(password))
    {
    response.sendRedirect("home.jsp");
}
else
{
response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>