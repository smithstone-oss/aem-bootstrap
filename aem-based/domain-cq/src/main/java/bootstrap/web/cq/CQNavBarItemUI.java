package bootstrap.web.cq;

import bootstrap.web.NavBarItemUI;
import com.day.cq.wcm.api.Page;

public class CQNavBarItemUI implements NavBarItemUI {

    private final Page page;

    public CQNavBarItemUI(Page page) {
        this.page = page;
    }

    @Override
    public boolean isHidden() {
        return page.isHideInNav();
    }

    @Override
    public String getTitle() {
        return page.getNavigationTitle();
    }

    @Override
    public String getUrl() {
        return page.getPath();
    }
}
