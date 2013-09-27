<%-- 
    Document   : result
    Created on : 26/09/2013, 08:09:47 PM
    Author     : Juan
--%>

<%!
private String movie = null;
%>
        
<%
movie = String.valueOf(session.getAttribute("movie"));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Review Search Result</title>
       
        <style type="text/css">
            html,body{
                background-image: url(imagenes/NYT.jpg);
                font-style:inherit;
            }

        </style>
   
    </head>
    <body>
        <center>
            <font face="Comic Sans MS"><h1>Search Results</h1></font>
        <br>
        
        <%
            String n = movie;
            String[] parts = n.split("☺");
            
        %>
        <%
            
            //resu= title+ "*" + head + "*" +movieReview+ "*" +summary+ "*" +publication+ "*"+url2;
            String MovieReview = null;
            String head = null;
            String Title = parts[0];
            String head1 = parts[1];
            if("".equals(head1)){
            head = "No Se encuentra cabecera de " +Title;            
            }else
            {
            head = head1;
            }
            String Review = parts[2];
            if("".equals(Review)){
            MovieReview = "No hay Critica de " +Title;            
            }else
            {
            MovieReview = Review;
            }
            String summary = parts[3];
            String publication = parts[4];
            String url = parts[5];
            
            //desplegar respuesta obtenida
        %>
        
        <h1>Movie Review</h1>
        <h2>Title: <%=Title%></h2><br>
        <h2>Headline: <%=head%></h2><br>
        <h2>Movie Review: <%=MovieReview%></h2><br>
        <h2>Summary: <%=summary%></h2><br>
        <h2>Publication Date: <%=publication%></h2><br>
        <h2>Link Trailer: <a href=<%=url%>><%=url%></a></h2><br>


        <form method="get" action="MovieReviewSearchServlet">
             <a href="index.jsp">Back</a>
        </form>
        </center>
    </body>
</html>
    