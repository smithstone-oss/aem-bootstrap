<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<html>
<head>
    <title>en Index</title>

    <!-- Latest compiled and minified CSS & JS -->
    <link rel="stylesheet" media="screen" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

</head>
<body>


<div class="container">
    <bootstrap:accordion id="accordion">

            <jsp:attribute name="body">

                <div class="parsys par" id="manager">

                    <div class="panel panel-default section">


                    <bootstrap:accordion-item parentContainerId="div.parsys.par" bodyId="collapseOne" headingId="headingOne"
                                              in="in">
                    <jsp:attribute name="heading">
                        Collapsible Group Item #1
                    </jsp:attribute>
                    <jsp:attribute name="body">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab accusantium consequuntur cupiditate dignissimos doloribus, et ex facere harum incidunt ipsa iusto molestiae nihil voluptatem! Deleniti eaque nulla pariatur totam ut?
                    </jsp:attribute>
                    </bootstrap:accordion-item>

                    </div>

                    <div class="panel panel-default section">

                    <bootstrap:accordion-item parentContainerId="div.parsys.par" bodyId="collapseTwo" headingId="headingTwo">
                    <jsp:attribute name="heading">
                        Collapsible Group Item #2
                    </jsp:attribute>
                    <jsp:attribute name="body">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab accusantium consequuntur cupiditate dignissimos doloribus, et ex facere harum incidunt ipsa iusto molestiae nihil voluptatem! Deleniti eaque nulla pariatur totam ut?
                    </jsp:attribute>
                    </bootstrap:accordion-item>

                    </div>

                </div>




            </jsp:attribute>

    </bootstrap:accordion>
</div>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>
