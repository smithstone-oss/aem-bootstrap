<%@include file="/apps/foundation/global.jsp"%>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<%@taglib prefix="aem-util-tags" uri="http://www.smithstone-solutions.co.uk/aem/util/tags" %>

<script>


    CQ.WCM.onEditableReady('/content/bs-example-page', function () {

        console.log("Editable item is ready");

    });

    //    CQ.WCM.onEditableReady('/content/bs-example-page/jcr:content/parsys/accordion/par/item_0/par',function(){
    //
    //        console.log("Editable item_0 is ready");
    //
    //    });
</script>


<bootstrap:accordion id="accordion">

    <jsp:attribute name="body">

        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </jsp:attribute>
</bootstrap:accordion>

<cq:include path="end" resourceType="bootstrap/components/accordion/end"/>


<script type="text/javascript">

    $CQ(document).ready(function () {

        /*
         $("#accordion .collapse").each(function (index, element) {
         var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
         if (parsys) {
         console.log(parsys)
         parsys.hide();//                }
         }
         });
         */


        /*
         $CQ("#accordion .collapse").not(".in").each(function (index, element) {
         var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
         if (parsys) {
         if (!parsys.hidden) {
         parsys.hide();
         }
         }
         });
         */

        /*        $CQ("#accordion .collapse.in").each(function (index, element) {
         var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
         if (parsys) {
         if (parsys.hidden) {
         parsys.show();
         }

         }
         });*/


        $('#accordion').on('hidden.bs.collapse', function (e) {


                    $(".collapsing").each(function (index, element) {
                        var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                        if (parsys) {
                            parsys.hide();
                        }
                    });




//                    console.log($($(e.currentTarget).find(".collapsing")));

//                    var parsysContainer = $($(e.currentTarget).find(".collapsing")[0]);

//                    var parsys = CQ.WCM.getEditable(parsysContainer.attr("data-cq-editable-path"));

//                    if (parsys) {
//                        parsys.hide();
//                    }

                }
        );

        $('#accordion').on('shown.bs.collapse', function (e) {

                    $(".in").each(function (index, element) {
                        var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                        if (parsys) {
                            parsys.show();
                        }
                    });

//                    console.log($($(e.currentTarget).find(".in")));

//                    var parsysContainer = $($(e.currentTarget).find(".in")[0]);

//                    var parsys = CQ.WCM.getEditable(parsysContainer.attr("data-cq-editable-path"));

//                    if (parsys) {
//                        parsys.show();
//                    }

                }
        );
    });


</script>
