<%@include file="/apps/foundation/global.jsp"%>
<ul class="nav-tabs nav" role="tablist" id="<%=resource.getPath().replaceAll("/","_").replaceAll(":","_")%>"></ul>
<cq:include path="tab-content"   resourceType="bootstrap/components/tab/parsys"/>


<cq:include path="end" resourceType="bootstrap/components/tab/end"/>

<script>
    $(document).ready(function () {

        var parent = $("#<%=resource.getPath().replaceAll("/","_").replaceAll(":","_")%>").parent();

        var container = "tab-container_<%=resource.getPath().replaceAll("/","_").replaceAll(":","_")%>";

        $(parent).attr("id" , container);


        $(parent).find(" .tab-pane").each(function (i, e) {

            var config = $(e).find(".config").attr("data-aem-config");

            $(e).attr("id", config);

            if (i == 0) {
                $(e).addClass("active");
            }

        });

        $(parent).find(" .tab-content .tab-pane").each(function (i, e) {

            var id = $(e).attr("id");
            var availableTabs = $(parent).find("ul.nav-tabs.nav");
            var active = "";
            if (i == 0) {
                active = "active";


            }
            var tabText = $(e).find(".config").attr("data-tab-heading");
            $("<li role='presentation'  class='" + active + "'><a href='#" + id + "' role='tab' data-toggle='tab'>" + tabText + "</a></li>").appendTo(availableTabs);


        });

        if (typeof(CQ) != "undefined") {

            $(".tab-pane.active .config").each(function (i, e) {

                var parsys = $(e).attr("data-aem-panel-parsys");


                CQ.WCM.onEditableReady(parsys, function (e) {
                    var p = CQ.WCM.getEditable(parsys);
                    if (p) {
                        p.show();
                        console.log("Showing " + parsys);
                    }

                });


            });

            $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){


                $($(e.relatedTarget).attr("href") + " .config").each(function(i,e){
                    var parsys = $(e).attr("data-aem-panel-parsys");
                    var p = CQ.WCM.getEditable(parsys);
                    if (p) {
                        p.hide();
                    }
                });


                $($(e.target).attr("href") + " .config").each(function(i,e){
                    var parsys = $(e).attr("data-aem-panel-parsys");
                    var p = CQ.WCM.getEditable(parsys);
                    if (p) {
                        p.show();
                    }
                });


            });

            $('a[data-toggle="tab"]').on('hide.bs.tab', function (e) {
                /*var sel = $(e.target).attr("href") + " .config";
                $(sel).each(function(i,e){
                    var parsys = $(e).attr("data-aem-panel-parsys");
                    var p = CQ.WCM.getEditable(parsys);
                    if (p) {
                        p.hide();
                    }
                });*/

            })

        }

    });
</script>
