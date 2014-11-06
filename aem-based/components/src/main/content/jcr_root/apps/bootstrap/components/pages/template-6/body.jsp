<%--
  Copyright 1997-2008 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Default body script.

  Draws an empty HTML body.

  ==============================================================================

--%>
<%@include file="/apps/foundation/global.jsp" %>
<%@page session="false"%><body>
<div class="container">
<cq:include path="nav-bar" resourceType="bootstrap/components/navbar"/>
<cq:include path="parsys" resourceType="foundation/components/parsys"/>
</div>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
