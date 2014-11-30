<%@include file="/apps/foundation/global.jsp"%>
<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>
<%@taglib prefix="bootstrap-cq" uri="http://www.smithstone-solutions.co.uk/bootstrap/cq/tags" %>
<%@taglib prefix="aem-util-tags" uri="http://www.smithstone-solutions.co.uk/aem/util/tags" %>

<cq:includeClientLib categories="ss.bootstrap.accordion.cq,ss.bootstrap.accordion.non-cq"/>


<bootstrap-cq:accordionSupportTag/>
<jsp:useBean id="accordion" type="bootstrap.web.AccordionUI" scope="request"/>
<bootstrap:accordion id="${accordion.id}">
    <jsp:attribute name="body">
        <cq:include path="accordion-items" resourceType="foundation/components/parsys"/>
    </jsp:attribute>
</bootstrap:accordion>

<cq:include path="end" resourceType="bootstrap/components/accordion/end"/>

<!-- cq clientlib should be here -->
<!-- end -->

<script type="text/javascript">

    $(document).ready(function () {

        if(typeof(CQ) != "undefined"){


            var accordionSelector = "#${accordion.id}";


            $(accordionSelector + " .panel-collapse").each(function (index, element) {
                CQ.WCM.onEditableReady($(element).attr("data-cq-editable-path"), function (e) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                    if (parsys) {
                        parsys.hide();
                    }
                });

            });

            $(accordionSelector).on('hide.bs.collapse', function (e) {

                $(accordionSelector+ " .panel-collapse").each(function (index, element) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                    if (parsys) {
                        parsys.hide();
                    }
                });

            });

            $(accordionSelector).on("shown.bs.collapse" , function(e){


                $(accordionSelector + " .panel-collapse.in").each(function (index, element) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                    if (parsys) {
                        parsys.show();
                    }
                });
            });


        }

    });


</script>
