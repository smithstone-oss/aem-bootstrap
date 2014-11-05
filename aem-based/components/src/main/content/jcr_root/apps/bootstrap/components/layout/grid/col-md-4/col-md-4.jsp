<%@include file="/apps/foundation/global.jsp"%>
    <cq:include path="start" resourceType="bootstrap/components/layout/grid/col-md-4/start"/>
    <div id="<%= resource.getPath().replaceAll("/", "_").replaceAll(":", "_")%>" data-aem-html-tag-extra-classes="<%= properties.get("replacementBootstrapCssClasses" , "")%>">
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </div>
    <cq:include path="end" resourceType="bootstrap/components/layout/grid/col-md-4/end"/>
<script>
    $(document).ready(function(){
        var extraCssClasses = $("#<%= resource.getPath().replaceAll("/", "_").replaceAll(":", "_") %>").attr("data-aem-html-tag-extra-classes");
        $("#<%= resource.getPath().replaceAll("/", "_").replaceAll(":", "_") %>").parent().addClass(extraCssClasses);
    });
</script>
