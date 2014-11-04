<%@attribute name="body" fragment="true" required="true" %>
<%@attribute name="aemEditablePath" rtexprvalue="true" required="true" %>
<%@attribute name="active" rtexprvalue="true" required="false" %>

<div class="config" data-aem-editable-path="${aemEditablePath}">
    <jsp:invoke fragment="body"/>
</div>
<div style="clear:both"></div>






