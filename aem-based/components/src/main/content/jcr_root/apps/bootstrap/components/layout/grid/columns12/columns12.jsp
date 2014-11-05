<%@include file="/apps/foundation/global.jsp"%>
<%@taglib prefix="bootstap-layout" uri="http://www.smithstone-solutions.co.uk/bootstrap/cq/tags/layout" %>

<bootstap-layout:columnTwelveSupportTag/>

<jsp:useBean id="columns" scope="request" type="java.util.List"/>

<div class="row">
    <c:forEach items="${columns}" var="col" varStatus="i">
        <div class="${col} panel panel-default">
            <div class="panel-body">
                <sling:include path="col-ctl-${i.count}" resourceType="foundation/components/parsys"/>
            </div>
            <div style="clear:both"></div>
        </div>
    </c:forEach>
    <div style="clear:both"></div>
</div>
<div style="clear:both"></div>

<cq:include path="end" resourceType="bootstrap/components/layout/grid/columns12/end"/>
