package pb;

import io.wcm.testing.mock.aem.junit.AemContext;
import io.wcm.testing.mock.aem.junit.AemContextCallback;
import io.wcm.testing.mock.sling.servlet.MockRequestPathInfo;
import io.wcm.testing.mock.sling.servlet.MockSlingHttpServletRequest;
import io.wcm.testing.mock.sling.servlet.MockSlingHttpServletResponse;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ResourceResolver;
import org.apache.sling.api.servlets.HttpConstants;
import org.apache.sling.api.servlets.SlingAllMethodsServlet;
import org.junit.Rule;
import org.junit.Test;

import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;

import static org.hamcrest.CoreMatchers.containsString;
import static org.hamcrest.CoreMatchers.equalTo;
import static org.junit.Assert.assertThat;

public class SampleMockJcrTest {

    @Rule
    public final AemContext context = new AemContext(new AemContextCallback() {
        @Override
        public void execute(AemContext aemContext) throws IOException {
            Resource resource = aemContext.load().json("/sample.json", "/content/sample/en");
            aemContext.load().json("/fred.json", resource, "fred");
        }
    });

    @Test
    public void testSuffixResource() throws Exception {
        ResourceResolver resourceResolver = context.resourceResolver();
        MockSlingHttpServletRequest request = new MockSlingHttpServletRequest(resourceResolver);
        MockSlingHttpServletResponse response = new MockSlingHttpServletResponse();

        request.setResource(resourceResolver.getResource("/content/sample/en"));
        MockRequestPathInfo requestPathInfo = (MockRequestPathInfo)request.getRequestPathInfo();
        requestPathInfo.setSelectorString("selector1.selector2");
        requestPathInfo.setExtension("html");
        requestPathInfo.setSuffix("/content/sample/en/fred");
        request.setMethod(HttpConstants.METHOD_GET);
        new SampleServletUsingSuffixResource().doGet(request, response);
        assertThat(response.getContentType(), containsString("application/json"));
        assertThat(response.getOutputAsString(), equalTo("{\"resource\" : \"/content/sample/en/fred\"}"));
    }

    @Test
    public void testSuffixResourceWithResolver() throws Exception {
        ResourceResolver resourceResolver = context.resourceResolver();
        MockSlingHttpServletRequest request = new MockSlingHttpServletRequest(resourceResolver);
        MockSlingHttpServletResponse response = new MockSlingHttpServletResponse();

        request.setResource(resourceResolver.getResource("/content/sample/en"));
        MockRequestPathInfo requestPathInfo = (MockRequestPathInfo)request.getRequestPathInfo();
        requestPathInfo.setSelectorString("selector1.selector2");
        requestPathInfo.setExtension("html");
        requestPathInfo.setSuffix("/content/sample/en/fred");
        request.setMethod(HttpConstants.METHOD_GET);
        new SampleServletNotUsingSuffixResource().doGet(request,response);
        assertThat(response.getContentType(), containsString("application/json"));
        assertThat(response.getOutputAsString(), equalTo("{\"resource\" : \"/content/sample/en/fred\"}"));
    }


    class SampleServletUsingSuffixResource extends SlingAllMethodsServlet {
        @Override
        protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {
            Resource suffixResource = request.getRequestPathInfo().getSuffixResource();
            PrintWriter writer = response.getWriter();
            response.setContentType("application/json");
            writer.write(String.format("{\"resource\" : \"%s\"}" , suffixResource.getPath()));
            writer.flush();
            writer.close();
        }
    }

    class SampleServletNotUsingSuffixResource extends SlingAllMethodsServlet {
        @Override
        protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {
            String suffix = request.getRequestPathInfo().getSuffix();
            Resource suffixResource = request.getResourceResolver().resolve(suffix);
            PrintWriter writer = response.getWriter();
            response.setContentType("application/json");
            writer.write(String.format("{\"resource\" : \"%s\"}" , suffixResource.getPath()));
            writer.flush();
            writer.close();
        }

    }

/*
    @Test
    public void testMockResourceResolver() throws Exception {
        Resource resolve = context.resourceResolver().resolve("/content/sample/en");
        Page page = resolve.adaptTo(Page.class);
        System.out.println(page.getTitle());
        assertThat(page.getTitle(), equalTo("English"));
    }
*/
}
