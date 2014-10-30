<%@include file="/apps/foundation/global.jsp"%>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<bootstrap:accordion id="accordion" >

    <jsp:attribute name="body">

        <cq:include path="par" resourceType="foundation/components/parsys"/>

    </jsp:attribute>

</bootstrap:accordion>

<cq:include path="end" resourceType="bootstrap/components/accordion/end"/>
