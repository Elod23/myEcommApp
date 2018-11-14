package myEcommApp.controller;

import myEcommApp.model.Product;
import myEcommApp.services.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private ProductServices productServices;

    @RequestMapping("/")
    public String home(Model model) {
        List<Product> productList = productServices.getAllProducts();
        model.addAttribute("products", productList);

        return "home";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable Long productId, Model model) throws IOException {
        Product product = productServices.getProductById(productId);
        model.addAttribute(product);

        return "viewProduct";
    }


}
