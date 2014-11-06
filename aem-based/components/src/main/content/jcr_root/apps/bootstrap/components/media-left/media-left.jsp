<%@include file="/apps/foundation/global.jsp" %>

<a class="media-left <%= properties.get("medialocation" , "media-top")%>" href="#">
    <img src="//lorempixel.com/64/64/sports/" alt="...">
</a>
<div class="media-body">
    <h4 class="media-heading">

        <%= properties.get("heading" , "Define Media Headline")%>

    </h4>
    <div>
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </div>
</div>

<div class="clearfix"></div>
