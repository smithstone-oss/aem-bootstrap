package bootstrap.web.cq;

import bootstrap.web.NavBarItemUI;
import bootstrap.web.NavBarUI;
import com.day.cq.wcm.api.Page;
import com.day.cq.wcm.api.PageFilter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CQNavBarUI implements NavBarUI {

    private final Page root;
    private List<NavBarItemUI> pages;

    public CQNavBarUI(Page page) {
        root = page.getAbsoluteParent(2);
    }

    public List<NavBarItemUI> getChildren(){
        Iterator<Page> children = root.listChildren(new PageFilter());
        lazyLoadPages(children);
        return pages;

    }

    private void lazyLoadPages(Iterator<Page> children) {
        if(pages == null){
            pages = new ArrayList<>();
            while(children.hasNext()){
                pages.add(new CQNavBarItemUI(children.next()));
            }
        }
    }
}
