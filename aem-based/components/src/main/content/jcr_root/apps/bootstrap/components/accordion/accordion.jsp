<%@include file="/apps/foundation/global.jsp"%>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<%@taglib prefix="aem-util-tags" uri="http://www.smithstone-solutions.co.uk/aem/util/tags" %>

<bootstrap:accordion id="accordion">

    <jsp:attribute name="body">
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </jsp:attribute>
</bootstrap:accordion>

<cq:include path="end" resourceType="bootstrap/components/accordion/end"/>


<script type="text/javascript">

    $CQ(document).ready(function () {

        $("#accordion .panel-collapse").each(function (index, element) {
            CQ.WCM.onEditableReady($(element).attr("data-cq-editable-path"), function (e) {
                var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                if (parsys) {
                    console.log("hiding parsys @ " + $(element).attr("data-cq-editable-path"));
                    parsys.hide();
                }
                else {
                    console.log("parsys not available @ " + $(element).attr("data-cq-editable-path"));
                }
            });

        });

        $("#accordion").on('hide.bs.collapse', function (e) {

            $("#accordion .panel-collapse").each(function (index, element) {
                var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                if (parsys) {
                    console.log("hiding parsys @ " + $(element).attr("data-cq-editable-path"));
                    parsys.hide();
                }
                else {
                    console.log("parsys not available @ " + $(element).attr("data-cq-editable-path"));
                }
            });

        });


        $("#accordion").on("shown.bs.collapse" , function(e){


            $("#accordion .panel-collapse.in").each(function (index, element) {
                var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                if (parsys) {
                    console.log("showing parsys @ " + $(element).attr("data-cq-editable-path"));
                    parsys.show();
                }
                else {
                    console.log("parsys not available @ " + $(element).attr("data-cq-editable-path"));
                }
            });
        });

        /*
        $('#accordion').on('hidden.bs.collapse', function (e) {


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
