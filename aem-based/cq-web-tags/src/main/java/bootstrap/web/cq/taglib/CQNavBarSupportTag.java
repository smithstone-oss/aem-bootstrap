package bootstrap.web.cq.taglib;

import bootstrap.web.NavBarUI;
import bootstrap.web.cq.CQNavBarUI;
import bootstrap.web.taglib.NavBarSupportTag;
import org.apache.sling.api.resource.Resource;

public class CQNavBarSupportTag extends NavBarSupportTag {

    @Override
    public NavBarUI getNavBar() {

        return new CQNavBarUI(
                (Resource) getJspContext().findAttribute("resource")
        );
    }
}
