<%@include file="/apps/foundation/global.jsp" %>


<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
    <%=properties.get("text", "Dropdown")%>
    <span class="caret"></span>
</button>
<ul class="dropdown-menu" role="menu" data-cq-editable-path="${resource.path}/menu-items">
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
    <cq:include path="menu-items" resourceType="foundation/components/parsys"/>

</ul>



<cq:include path="end" resourceType="bootstrap/components/buttons/dropdown/end"/>

<script>

    $(document).ready(function () {

        if(typeof(CQ) != "undefined"){

            CQ.WCM.onEditableReady("${resource.path}/menu-items", function(e){
                var parsys = CQ.WCM.getEditable("${resource.path}/menu-items");
                if(parsys){
                    parsys.hide();
                }
            });

            $(".dropdown").on("hide.bs.dropdown", function(e){

                var parsys = CQ.WCM.getEditable($(this).find(".dropdown-menu").attr("data-cq-editable-path"));
                if(parsys){
                    parsys.hide();
                }
            });

            $(".dropdown").on("shown.bs.dropdown", function(e){
                var parsys = CQ.WCM.getEditable($(this).find(".dropdown-menu").attr("data-cq-editable-path"));
                if(parsys){
                    parsys.show();
                }
            });


        }

    });


</script>
