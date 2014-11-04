<%@include file="/apps/foundation/global.jsp" %>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<bootstrap:carousel-item aemEditablePath="${resource.path}/par">
    <jsp:attribute name="body">
        <p>${resource.path}</p>
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </jsp:attribute>
</bootstrap:carousel-item>

