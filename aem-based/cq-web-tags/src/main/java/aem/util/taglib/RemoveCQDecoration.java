package aem.util.taglib;

import com.day.cq.wcm.api.components.ComponentContext;
import com.day.cq.wcm.commons.WCMUtils;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class RemoveCQDecoration extends SimpleTagSupport {

    private ServletRequest request;

    public void setRequest(ServletRequest request) {
        this.request = request;
    }

    @Override
    public void doTag() throws JspException, IOException {
        ComponentContext componentContext = WCMUtils.getComponentContext(request);
        componentContext.setAttribute("id", "manager");
//        if (WCMMode.fromRequest(request) != WCMMode.EDIT && WCMMode.fromRequest(request) != WCMMode.DESIGN) {
//            componentContext.setDefaultDecorationTagName("");
//            componentContext.setAttribute("class", "moo panel panel-default");
//            IncludeOptions options = IncludeOptions.getOptions(request, true);
//            options.forceSameContext(true);
//        }

//        if (WCMMode.fromRequest(request) != WCMMode.EDIT && WCMMode.fromRequest(request) != WCMMode.DESIGN) {
//            IncludeOptions.getOptions(request, true).forceSameContext(Boolean.TRUE);
//        }

    }
}
