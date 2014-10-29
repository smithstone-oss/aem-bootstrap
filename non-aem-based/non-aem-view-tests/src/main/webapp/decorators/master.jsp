<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">
<head>
    <title><decorator:title/> - Master Template</title>


    <decorator:head/>

    <style>
        body {
            margin-top: 10px;
        }


    </style>

</head>
<body>
<div class="container">

    <decorator:body/>

</div>




</body>
</html>

