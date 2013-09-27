<%-- 
    Document   : index
    Created on : 26/09/2013, 07:23:05 PM
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
    
        <title>Movie Reviews Search Service</title>
    </head>
    <body>
        <center>
        <font face="Comic Sans MS"><h1>The New York Times</h1></font>
        <h2>Movie Reviews Search Service Client</h2>
        <br><br>
        This WebApp allows to search for Reviews about a movie using a given keyword.
        It will show the title, a review, the publication date and it may show a URL 
        which will direct you to a movie trailer.
        <br><br>
        This service is made with The Movie Reviews API from New York Times<br>
        <h2>Link de la API: <a href=http://developer.nytimes.com/docs/movie_reviews_api/#h3-search>http://developer.nytimes.com/docs/movie_reviews_api/#h3-search</a></h2><br>
        <form method="get" action="MovieReviewsSearchServlet">
            <br><br><input type="text" name="keyword" value=""/>
            <br><input type="submit" value="Search News" name="getMovie"/>
        </form>
        
       
    </center>
    </body>
</html>