<%@include file="/apps/foundation/global.jsp"%>
    <cq:include path="start" resourceType="bootstrap/components/layout/grid/col-md-8/start"/>
    <div class="panel-body" id="<%= resource.getPath().replaceAll("/", "_").replaceAll(":", "_")%>" data-aem-html-tag-extra-classes="<%= properties.get("replacementBootstrapCssClasses" , "")%>">
        <p>Custom Column <%= properties.get("replacementBootstrapCssClasses" , "") %></p>
        <cq:include path="par" resourceType="foundation/components/parsys"/>
    </div>
    <cq:include path="end" resourceType="bootstrap/components/layout/grid/col-md-8/end"/>
<script>
    $(document).ready(function(){
        var extraCssClasses = $("#<%= resource.getPath().replaceAll("/", "_").replaceAll(":", "_") %>").attr("data-aem-html-tag-extra-classes");
        $("#<%= resource.getPath().replaceAll("/", "_").replaceAll(":", "_") %>").parent().addClass(extraCssClasses);
    });
</script>
