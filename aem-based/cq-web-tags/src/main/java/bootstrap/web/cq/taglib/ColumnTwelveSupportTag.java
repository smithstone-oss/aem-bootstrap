package bootstrap.web.cq.taglib;

import com.day.cq.wcm.api.components.Component;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Arrays;

public class ColumnTwelveSupportTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {

        Component component = (Component)getJspContext().findAttribute("component");
        String[] colSpecs = component.getProperties().get("colSpec", String[].class);
        getJspContext().setAttribute("columns" , Arrays.asList(colSpecs), PageContext.REQUEST_SCOPE);
    }
}
