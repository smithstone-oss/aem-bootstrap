<%@include file="/apps/foundation/global.jsp"%>
<%--<div class="">--%>

    <cq:include path="start" resourceType="bootstrap/components/layout/grid/custom-column/start"/>

    <div class="panel-body">
        <p>Custom Column <%= properties.get("replacementBootstrapCssClasses" , "col-md-4") %></p>
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </div>
    <cq:include path="end" resourceType="bootstrap/components/layout/grid/custom-column/end"/>

<%--</div>--%>
<%--<div style="" class="clearfix"></div>--%>
