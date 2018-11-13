package myEcommApp.controller;

import myEcommApp.dao.ProductDao;
import myEcommApp.dao.implementations.ProductDaoImp;
import myEcommApp.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/admin")
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model) {
        //get the product list and add it to the model
        List<Product> products = productDao.getAllProducts();
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
        productDao.addProduct(product);
        return "redirect:/admin/productInventory";
    }

    @RequestMapping(value = "/admin/productInventory/searchProduct", method = RequestMethod.GET)
    public String searchProductGet(@ModelAttribute ("product") Product product) {
        return "redirect://viewProduct/{productId}";
    }

    @RequestMapping(value = "/admin/productInventory/deleteProduct", method = RequestMethod.GET)
    public String deleteProductGet(@ModelAttribute ("product") Product product) {
        return "redirect:/admin/productInventory";
    }

}
