package bootstrap.web.taglib;

import bootstrap.AccordionItemUI;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public abstract class AccordionItemSupportTag extends SimpleTagSupport {

    public abstract AccordionItemUI getAccordionItem();

    @Override
    public void doTag() throws JspException, IOException {
        getJspContext().setAttribute("item", getAccordionItem(), PageContext.REQUEST_SCOPE);
    }
}
