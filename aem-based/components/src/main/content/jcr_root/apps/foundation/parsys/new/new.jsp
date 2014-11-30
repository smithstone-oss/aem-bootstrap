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

  Default parsys/new component

  This component does not provide any output and is used only for the "new"
  edit bar. It respects the "currentResource" edit context attribute that allows
  correct inserting components in the paragraph system.

--%><%@ page session="false" import="
    com.day.cq.wcm.api.components.EditContext,
    com.day.text.Text,
    org.apache.sling.api.resource.Resource,
    com.day.cq.wcm.commons.WCMUtils" %><%

    EditContext editContext = WCMUtils.getComponentContext(request).getEditContext();
    if (editContext != null) {
        if (editContext.getParent() != null) {
            Resource curRes = (Resource) editContext.getParent().getAttribute("currentResource");
            if (curRes != null) {
                String prev = Text.getName(curRes.getPath());
                editContext.getEditConfig().setInsertBehavior("before " + prev);
            }
        }
    }
%>