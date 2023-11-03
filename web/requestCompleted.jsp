<%@include file="header.html"%>
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
    <head>
        <style>
            #customers {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 95%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even){
                background-color: #f2f2f2;
            }

            #customers tr:hover {
                background-color: #ddd;
            }

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body style="background-color: aqua">
        <br>
    <center>
        <table id="customers">
            <tr>
                <th>Name</th>
                <th>Mobile Number</th>
                <th>Email</th>
                <th>BloodGroup</th>

            </tr>
            <tr>
                <%
                    try {
                        Connection con = ConnectionProvider.getCon();
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("select *from bloodrequest where status='COMPLETED'");
                        while (rs.next()) {
                %>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
            </tr>
            <tr>
                <%}
                    } catch (Exception e) {
                        e.printStackTrace();
                    }%>
            </tr>
        </table>

    </center>
    <br>
    <br>
    <br>
    <br>
    <h3 style="color: window"><center>ARIJIT GUHA's BLOOD BANK MANAGEMENT SYSTEM</center></h3>
</body>
</html>