package bootstrap.web.cq.taglib;

import bootstrap.web.NavBarUI;
import bootstrap.web.taglib.NavBarSupportTag;
import com.day.cq.wcm.api.Page;

public class CQNavBarSupportTag extends NavBarSupportTag {
    
    @Override
    public NavBarUI getNavBar() {
        Page page = (Page) getJspContext().findAttribute("currentPage");
        return new bootstrap.web.cq.CQNavBarUI(page);
    }
}
