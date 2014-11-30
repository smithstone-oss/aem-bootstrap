<%@page session="false"%><%--
  Copyright 1997-2011 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

    Script to request a parsys with EditContext but without decoration. To achieve
    this the script is include two times:
    1) set an empty decoration tag and the option to force an EditContext, then include self
    2) when EditContext is present cancel decoration and forward to parsys.jsp by removing the selector

--%><%@page import="org.apache.sling.api.request.RequestDispatcherOptions,
                    com.day.cq.wcm.api.components.IncludeOptions,
                    com.day.cq.wcm.api.WCMMode" %><%
%><%@include file="/libs/foundation/global.jsp"%><%

IncludeOptions opts = IncludeOptions.getOptions(slingRequest, true);
if (editContext==null && WCMMode.fromRequest(slingRequest) == WCMMode.EDIT) {
	opts.forceEditContext(true);
    opts.setDecorationTagName("");
	slingRequest.getRequestDispatcher(resource).include(slingRequest, slingResponse);
} else {
    RequestDispatcherOptions reqOpts = new RequestDispatcherOptions();
    reqOpts.setReplaceSelectors("");
    componentContext.setDecorate(false);
    slingRequest.getRequestDispatcher(resource, reqOpts).include(slingRequest, slingResponse);
}
%>
