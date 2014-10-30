<%@include file="/apps/foundation/global.jsp"%>

<%@taglib prefix="bootstrap" tagdir="/WEB-INF/tags/apps/bootstrap/components/tags" %>

<bootstrap:accordion-item headingId="moo" bodyId="moo" parentContainerId="accordion">

    <jsp:attribute name="heading">

        Heading

    </jsp:attribute>

    <jsp:attribute name="body">

        <p>Body</p>

        <cq:include path="par" resourceType="foundation/components/parsys"/>

    </jsp:attribute>

</bootstrap:accordion-item>


<cq:include path="end" resourceType="bootstrap/components/accordion/item/end"/>
