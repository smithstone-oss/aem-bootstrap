<%@include file="/apps/foundation/global.jsp"%>

<div class="config" style="padding:2px; margin-bottom:2px; border: 1px solid #ddd;border-top-width: 0;"
     data-tab-heading="<%=properties.get("heading" , "[TBD]")%>"
     data-aem-panel-parsys="${resource.path}/tab-panel-components"
     data-aem-config="<%=resource.getPath().replaceAll("/" , "_").replaceAll(":", "_")%>">
    <span>&nbsp;</span>
    <%--<cq:include path="start" resourceType="bootstrap/components/tab/panel/start"/>--%>
    <cq:include path="tab-panel-components" resourceType="bootstrap/components/tab/panel/parsys"/>
    <%--<cq:include path="end" resourceType="bootstrap/components/tab/panel/end"/>--%>
    <span>&nbsp;</span>
</div>

<script>

    $(document).ready(function(){
        if(typeof(CQ) != "undefined"){
            CQ.WCM.onEditableReady('${resource.path}/tab-panel-components',function(e){
                var parsys = CQ.WCM.getEditable('${resource.path}/tab-panel-components');
                if(parsys){
                    parsys.hide();
                }

            });
        }
    });

</script>

