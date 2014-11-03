package bootstrap.web.cq.taglib;

import bootstrap.web.AccordionItemUI;
import bootstrap.web.taglib.AccordionItemSupportTag;
import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ValueMap;

public class CQAccordionItemSupportTag extends AccordionItemSupportTag {

    @Override
    public AccordionItemUI getAccordionItem() {
        final Resource resource = (Resource) getJspContext().findAttribute("resource");
        final ValueMap properties = resource.adaptTo(ValueMap.class);
        return new AccordionItemUI(){

            @Override
            public String getHeading() {
                return properties.get("heading", String.class);
            }

            @Override
            public String getParentContainerId() {
                Resource parent = resource.getParent();
                while(!parent.getResourceType().contains("components/accordion")){
                    parent = parent.getParent();
                }
                return parent.getName();
            }

            @Override
            public String getHeadingId() {
                return resource.getName()+"_heading";
            }

            @Override
            public String getBodyId() {
                return resource.getName()+"_body";
            }

            @Override
            public String getState() {
                return properties.get("expanded" , "");
            }
        };
    }
}
