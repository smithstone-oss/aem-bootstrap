<%@attribute name="heading" fragment="true" required="false" %>
<%@attribute name="body" fragment="true" required="false" %>

<%@attribute name="headingId" fragment="false" required="true" %>
<%@attribute name="bodyId" fragment="false" required="true" %>

<%@attribute name="parentContainerId" fragment="false" required="true" %>

<%@attribute name="in" required="false" %>

<div class="panel-heading" data-bs="smithstone" id="${headingId}">
    <h4 class="panel-title">
        <a data-toggle="collapse" href="#${bodyId}" data-parent="div.par.parsys">
            <jsp:invoke fragment="heading"/>
        </a>
    </h4>
</div>
<div id="${bodyId}" class="panel-collapse collapse ${in}">
    <div class="panel-body">
        <jsp:invoke fragment="body"/>
    </div>
</div>
