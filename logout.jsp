<%
    // terminate session
    session.invalidate();
    response.sendRedirect("http://localhost:8080/training/index2.jsp");
    
%>