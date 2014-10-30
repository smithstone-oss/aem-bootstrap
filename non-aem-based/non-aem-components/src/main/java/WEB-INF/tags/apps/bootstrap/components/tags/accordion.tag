<%@attribute name="body" fragment="true" required="false" %>
<%@attribute name="id" required="true" %>

<div class="panel-group" id="${id}">

    <jsp:invoke fragment="body"/>

</div>
