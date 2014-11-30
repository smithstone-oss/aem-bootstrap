package bootstrap.web.taglib;

import bootstrap.web.NavBarUI;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public abstract class NavBarSupportTag extends SimpleTagSupport {

    public abstract NavBarUI getNavBar();

    @Override
    public void doTag() throws JspException, IOException {
        getJspContext().setAttribute("navbar", getNavBar(), PageContext.REQUEST_SCOPE);
    }

}
