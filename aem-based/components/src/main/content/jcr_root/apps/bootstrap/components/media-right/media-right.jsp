<%@include file="/apps/foundation/global.jsp" %>

<div class="media-body">
    <h4 class="media-heading">Media heading</h4>
    <div>
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </div>
</div>
<a class="media-right <%= properties.get("medialocation" , "media-top")%>" href="#">
    <img src="//lorempixel.com/64/64/sports/" alt="...">
</a>

<div class="clearfix"></div>
