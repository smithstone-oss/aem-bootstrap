<%@include file="/apps/foundation/global.jsp"%>
<%@taglib prefix="bootstrap-cq" uri="http://www.smithstone-solutions.co.uk/bootstrap/cq/tags" %>
<bootstrap-cq:navBarSupportTag/>
<jsp:useBean id="navbar" type="bootstrap.web.NavBarUI" scope="request"/>
<nav class="navbar navbar-default" role="navigation">

    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">${navbar.brand}</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <c:forEach items="${navbar.children}" var="item">
                    <li><a href="#">${item.title}</a></li>
                </c:forEach>
            </ul>

        </div>

    </div>

</nav>



