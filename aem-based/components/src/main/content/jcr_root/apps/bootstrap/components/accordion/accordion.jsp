<%@include file="/apps/foundation/global.jsp"%>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<%@taglib prefix="aem-util-tags" uri="http://www.smithstone-solutions.co.uk/aem/util/tags" %>



<bootstrap:accordion id="${resource.name}_${resource.parent.name}">

    <jsp:attribute name="body">
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </jsp:attribute>
</bootstrap:accordion>

<cq:include path="end" resourceType="bootstrap/components/accordion/end"/>


<script type="text/javascript">

    $(document).ready(function () {

        if(typeof(CQ) != "undefined"){


            $("#${resource.name}_${resource.parent.name} .panel-collapse").each(function (index, element) {
                CQ.WCM.onEditableReady($(element).attr("data-cq-editable-path"), function (e) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                    if (parsys) {
                        parsys.hide();
                    }
                });

            });

            $("#${resource.name}_${resource.parent.name}").on('hide.bs.collapse', function (e) {

                $("#accordion .panel-collapse").each(function (index, element) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                    if (parsys) {
                        parsys.hide();
                    }
                });

            });

            $("#${resource.name}_${resource.parent.name}").on("shown.bs.collapse" , function(e){


                $("#${resource.name}_${resource.parent.name} .panel-collapse.in").each(function (index, element) {
                    var parsys = CQ.WCM.getEditable($(element).attr("data-cq-editable-path"));
                    if (parsys) {
                        parsys.show();
                    }
                });
            });


        }

    });


</script>
