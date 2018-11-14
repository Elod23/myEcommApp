package myEcommApp.services;

import myEcommApp.dao.ProductDao;
import myEcommApp.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service
public class ProductServices {

    @Autowired
    private ProductDao productDao;

    public List<Product> getAllProducts() {
        List<Product> products = productDao.getAllProducts();
        return products;
    }

    public Product getProductById(Long id) throws IOException {
        return productDao.getProductById(id);
    }

    public void deleteProduct(Long id) throws IOException {
        productDao.deleteProduct(id);
    }

    public void addProduct(Product product) {
        productDao.addProduct(product);
    }
 }
