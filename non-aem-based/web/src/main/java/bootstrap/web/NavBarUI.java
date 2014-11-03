package bootstrap.web;

import java.util.List;

public interface NavBarUI {
    String getBrand();

    List<NavBarItemUI> getChildren();
}
