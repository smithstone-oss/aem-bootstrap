<%@include file="/apps/foundation/global.jsp"%>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<%@taglib prefix="aem-util-tags" uri="http://www.smithstone-solutions.co.uk/aem/util/tags" %>


<bootstrap:accordion id="accordion">

    <jsp:attribute name="body">

        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </jsp:attribute>
</bootstrap:accordion>

<cq:include path="end" resourceType="bootstrap/components/accordion/end"/>

