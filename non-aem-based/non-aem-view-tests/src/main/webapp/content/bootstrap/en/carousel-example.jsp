<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Carousel Example</title>
    <link rel="stylesheet" media="screen" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <style>



    </style>

</head>
<body>

<div class="container">

    <div class="col-md-8">
        <div id="carousel-example-generic" class="carousel slide" >
            <!-- Indicators -->
            <%--<ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>--%>

            <!-- Wrapper for slides -->


            <div class="carousel-inner parsys par">

                <div class="cq-placeholder-parsys" style="width:10px;">
                    <p>Moo</p>
                </div>

                <div class="item active">
                    <div class="parsys par">
                        <img src="//lorempixel.com/900/500/" alt="">
                    </div>
                </div>

                <div class="cq-placeholder-parsys" style="width:10px;">
                    <p>Moo</p>
                </div>
                <div class="item">
                    <div class="parsys par">
                        <img src="//lorempixel.com/900/500/" alt="">

                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>

</div>


<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<script>

    $(document).ready(function () {
        $("#carousel-example-generic div.carousel-inner > div").not(".item").each(function (index, element){
            console.log($(element));
            $(element).remove();
        });

        $('#carousel-example-generic').carousel({

        });


    });

</script>

</body>
</html>
