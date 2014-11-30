package bootstrap.web.cq;

import bootstrap.web.AccordionItemUI;
import org.apache.sling.api.resource.ValueMap;

public class CQAccordionItemUI implements AccordionItemUI {

    private final ValueMap properties;

    public CQAccordionItemUI(org.apache.sling.api.resource.ValueMap properties) {
        this.properties = properties;
    }

    @Override
    public String getHeading() {
        return properties.get("heading", String.class);
    }

    @Override
    public String getParentContainerId() {
        return "accordion";
    }

    @Override
    public String getHeadingId() {
        return "m";
    }

    @Override
    public String getBodyId() {
        return "moo";
    }

    @Override
    public String getState() {

        return "";
    }
}
