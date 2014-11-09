package bootstrap.web.cq.taglib;

import bootstrap.web.AccordionUI;
import org.apache.sling.api.resource.Resource;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class CQAccordionSupportTag extends SimpleTagSupport {

    @Override
    public void doTag() throws JspException, IOException {
        final Resource resource = (Resource)getJspContext().findAttribute("resource");
        AccordionUI accordion = new AccordionUI() {

            @Override
            public String getId() {
                return String.format("%s", resource.getPath().replaceAll("/", "_").replaceAll(":" , "_"));
            }
        };
        getJspContext().setAttribute("accordion" , accordion, PageContext.REQUEST_SCOPE);
    }
}
