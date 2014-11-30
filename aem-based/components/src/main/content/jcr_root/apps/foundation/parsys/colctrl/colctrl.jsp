<%@page session="false"%><%--
  Copyright 1997-2008 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Default column control component

  The column control component has no real content it self. It is rather used
  to instruct the paragraph system component for proper layout.

  This is also an example of how the edit bar can be modified by a component.

--%><%@include file="/libs/foundation/global.jsp" %><%
%><%@ page import="com.day.cq.wcm.api.WCMMode,
                 com.day.cq.i18n.I18n,
                 com.day.cq.wcm.foundation.Paragraph,
                 com.day.cq.wcm.api.components.Toolbar" %><%

    if (editContext != null
            && WCMMode.fromRequest(request) == WCMMode.EDIT
            && resource instanceof Paragraph) {
        Paragraph par = (Paragraph) resource;
        switch (par.getType()) {
            case START: {
                String text = I18n.get(slingRequest, "Start of {0} Columns", "{0} is the placeholder for the nr of columns", par.getNumCols());
                editContext.getEditConfig().getToolbar().add(0, new Toolbar.Separator());
                editContext.getEditConfig().getToolbar().add(0, new Toolbar.Label(text));
                // disable ordering to get consistent behavior
 	        editContext.getEditConfig().setOrderable(false);
                break;
            }
            case END: {
                editContext.getEditConfig().getToolbar().clear();
                editContext.getEditConfig().getToolbar().add(
                    new Toolbar.Label("End of Columns"));
                // disable ordering to get consistent behavior
 	        editContext.getEditConfig().setOrderable(false);
                // set the content path to a fake one, since this editbar
                // is not used for editing and we need to avoid collisions with
                // the 'insert' bar with the same content path.
                editContext.setContentPath(par.getPath() + "_fake");
                break;
            }
            case BREAK:
                break;
            case NORMAL:
                break;
        }
    }
%>
