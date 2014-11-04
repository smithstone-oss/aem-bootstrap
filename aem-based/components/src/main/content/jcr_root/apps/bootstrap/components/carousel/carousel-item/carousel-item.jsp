<%@include file="/apps/foundation/global.jsp" %>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<bootstrap:carousel-item aemEditablePath="${resource.path}/par" active="false">
    <jsp:attribute name="body">
        <p>${resource.path}</p>
        <div style="border:1px solid green; margin:1em 5em">
            <cq:include path="par" resourceType="foundation/components/parsys"/>
        </div>
    </jsp:attribute>
</bootstrap:carousel-item>

<script>

    CQ.WCM.onEditableReady("${resource.path}/par",function(e){
        var parsys = CQ.WCM.getEditable("${resource.path}/par");
        var state = "${active}"
        if(state != "active" && parsys){
            parsys.hide();
        }

    });

</script>
