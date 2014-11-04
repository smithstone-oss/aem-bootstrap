<%@attribute name="body" fragment="true" required="true" %>
<%@attribute name="aemEditablePath" rtexprvalue="true" required="true" %>
<%@attribute name="active" rtexprvalue="true" required="true" %>

<img src="//lorempixel.com/900/500/" alt="">

<jsp:invoke fragment="body"/>

<script>

    CQ.WCM.onEditableReady('${aemEditablePath}',function(e){
        var parsys = CQ.WCM.getEditable('${aemEditablePath}');
        var state = "${active}"
        if(state != "active" && parsys){
            parsys.hide();
        }

    });

</script>
<div style="clear:both"></div>


