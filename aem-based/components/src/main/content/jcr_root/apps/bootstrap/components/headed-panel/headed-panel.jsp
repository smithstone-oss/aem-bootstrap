<%@include file="/apps/foundation/global.jsp"%>

<div class="panel-heading">
    <%= properties.get("heading" , "Panel heading without title")%>
</div>

<div class="panel-body">
    <cq:include path="par" resourceType="foundation/components/parsys"/>
</div>

<div class="clearfix"></div>
