package myEcommApp.controller;

import myEcommApp.model.Product;
import myEcommApp.services.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private ProductServices productServices;

    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/admin")
    public String Admin(Model model) {
        Product product = new Product();

        model.addAttribute("product", product);
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model) {
        //get the product list and add it to the model
        List<Product> products = productServices.getAllProducts();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model) {
        Product product = new Product();

        model.addAttribute("product", product);
        return "addProduct";
    }

    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@ModelAttribute("product") Product product) {
        productServices.addProduct(product);
        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/admin/searchProduct")
    public String searchProduct(Model model) {
        Product product = new Product();

        model.addAttribute("product", product);
        return "searchProduct";
    }

    @RequestMapping(value = "/admin/searchProduct", method = RequestMethod.POST)
    public String searchProductPost(@ModelAttribute("product") Product product) throws IOException{
        if (product != null) {
            Long id = product.getProductId();
            System.out.println(id);
            if (id != null)
                productServices.getProductById(product.getProductId());
        } else {
            throw new IOException("The product you searched for does not exist!");
        }
        return "redirect:/admin";
    }

   /* @RequestMapping("/admin/productInventory/deleteProduct")
    public String deleteProduct(Model model) {
        Product product = new Product();

        model.addAttribute("product", product);

        return "deleteProduct";
    }*/

    @RequestMapping(value = "/admin/productInventory/deleteProduct/{productId}", method = RequestMethod.POST)
    public String deleteProductPost(@ModelAttribute("product") Product product , @PathVariable Long productId) throws IOException {

        productServices.deleteProduct(productId);

        return "redirect://admin/productInventory";
    }

}
