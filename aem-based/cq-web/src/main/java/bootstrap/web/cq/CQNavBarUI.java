package bootstrap.web.cq;

import bootstrap.web.NavBarItemUI;
import bootstrap.web.NavBarUI;
import com.day.cq.commons.inherit.HierarchyNodeInheritanceValueMap;
import com.day.cq.wcm.api.Page;
import com.day.cq.wcm.api.PageFilter;
import com.day.cq.wcm.api.PageManager;
import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ValueMap;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CQNavBarUI implements NavBarUI {

    private static final long DEFAULT_ROOT_LEVEL = 2L;
    private static final String DEFAULT_BRAND = "No Brand";
    private final Page root;
    private Resource resource;
    private List<NavBarItemUI> pages;

    public CQNavBarUI(Page page, Long rootLevel) {
        root = page.getAbsoluteParent(rootLevel.intValue());

    }

    public CQNavBarUI(Resource resource) {
        this(resource.getResourceResolver().adaptTo(PageManager.class).getContainingPage(resource)
                , new HierarchyNodeInheritanceValueMap(resource).getInherited("rootLevel", DEFAULT_ROOT_LEVEL));
        this.resource = resource;
    }

    @Override
    public String getBrand() {
        return new HierarchyNodeInheritanceValueMap(resource.adaptTo(ValueMap.class)).getInherited("brand", DEFAULT_BRAND);
    }

    @Override
    public List<NavBarItemUI> getChildren() {
        if (root != null) {
            Iterator<Page> children = root.listChildren(new PageFilter());
            lazyLoadPages(children);
            return pages;
        } else
            return new ArrayList<>();
    }

    private void lazyLoadPages(Iterator<Page> children) {
        if (pages == null) {
            pages = new ArrayList<>();
            while (children.hasNext()) {
                pages.add(new CQNavBarItemUI(children.next()));
            }
        }
    }
}
