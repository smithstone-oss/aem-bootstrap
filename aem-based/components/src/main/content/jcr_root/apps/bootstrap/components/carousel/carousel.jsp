<%@include file="/apps/foundation/global.jsp" %>


<div class="col-md-8">
    <div id="carousel-example-generic" class="carousel slide" data-interval="false">
        <!-- Indicators -->
        <%--<ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>--%>

        <!-- Wrapper for slides -->
        <cq:include path="carousel-inner" resourceType="foundation/components/parsys"/>

        <script>

            $CQ(document).ready(function () {
                $($(".carousel-inner .item")[0]).addClass("active");
                $('#carousel-example-generic').carousel({});
            });

        </script>

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

<div style="clear:both"></div>
