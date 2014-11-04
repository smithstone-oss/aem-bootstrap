<%@include file="/apps/foundation/global.jsp" %>


<div class="col-md-8">
    <div id="carousel-example-generic" class="carousel slide" data-interval="false">
        <!-- Indicators -->
        <%--<ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>--%>

        <!-- Wrapper for slides -->
        <div style="border:1px solid red; padding:1em">
            <cq:include path="carousel-inner" resourceType="foundation/components/parsys"/>
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

<div style="clear:both"></div>

<script>


    var parsysUtils = function () {

        $('#carousel-example-generic .carousel-inner .item ').not(".active").each(function (index, element) {
            $(element).find(".config").each(function (index, element) {
                var parsys = CQ.WCM.getEditable($(element).attr("data-aem-editable-path"));
                CQ.WCM.onEditableReady($(element).attr("data-aem-editable-path"), function (e) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-aem-editable-path"));
                    var state = "${active}"
                    if (parsys) {
                        console.log("hiding parsys @ " + $(element).attr("data-aem-editable-path"));
                        parsys.hide();
                    }
                    else {
                        console.log("parsys not available @ " + $(element).attr("data-aem-editable-path"));
                    }

                });
            });

        });
        $('#carousel-example-generic .carousel-inner .item.active').each(function (index, element) {

            console.log($(element));
            $(element).find(".config").each(function (index, element) {
                var parsys = CQ.WCM.getEditable($(element).attr("data-aem-editable-path"));

                CQ.WCM.onEditableReady($(element).attr("data-aem-editable-path"), function (e) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-aem-editable-path"));
                    var state = "${active}"
                    if (parsys) {
                        console.log("showing parsys @ " + $(element).attr("data-aem-editable-path"));

                        parsys.show();
                    }
                    else {
                        console.log("parsys not available @ " + $(element).attr("data-aem-editable-path"));
                    }

                });

            });

        });

    }

    $CQ(document).ready(function () {
        $($(".carousel-inner .item")[0]).addClass("active");
        $('#carousel-example-generic').carousel({});
        parsysUtils();

        $("#carousel-example-generic").on("slid.bs.carousel", function(){
            $('#carousel-example-generic .carousel-inner .item.active').each(function (index, element) {
                console.log("slid finished should show all parsys in .active items");
                $(element).find(".config").each(function (index, element) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-aem-editable-path"));
                    if (parsys) {
                        console.log("showing parsys @ " + $(element).attr("data-aem-editable-path"));
                        parsys.show();
                    }
                    else {
                        console.log("parsys not available @ " + $(element).attr("data-aem-editable-path"));
                    }
                });

            })

        });

        $("#carousel-example-generic").on("slide.bs.carousel", function () {
            $('#carousel-example-generic .carousel-inner .item.active').each(function (index, element) {
                console.log("slide invoked should hide all parsys in .active items");
                $(element).find(".config").each(function (index, element) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-aem-editable-path"));
                    if (parsys) {
                        console.log("hiding parsys @ " + $(element).attr("data-aem-editable-path"));
                        parsys.hide();
                    }
                    else {
                        console.log("parsys not available @ " + $(element).attr("data-aem-editable-path"));
                    }
                });

            })

        });
    });

</script>

<script type="text/javascript">

    $CQ(document).ready(function () {

        /*
         $('#carousel-example-generic').on('hidden.bs.collapse', function (e) {


         $(".collapsing").each(function (index, element) {
         var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
         if (parsys) {
         parsys.hide();
         }
         });

         }
         );
         */

        /*
         $('#accordion').on('shown.bs.collapse', function (e) {

         $(".in").each(function (index, element) {
         var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
         if (parsys) {
         parsys.show();
         }
         });
         }
         );
         */
    });


</script>
