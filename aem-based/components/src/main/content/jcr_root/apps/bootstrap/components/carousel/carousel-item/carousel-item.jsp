<%@include file="/apps/foundation/global.jsp" %>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<style>

    .carousel-item-parsys .parsys .new {
        border:2px solid red;
        margin:0 5em;
    }



</style>

<bootstrap:carousel-item aemEditablePath="${resource.path}/par" active="false">
    <jsp:attribute name="body">
        <%--<p>${resource.path}</p>--%>
        <div style="" class="carousel-item-parsys" style="">
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
