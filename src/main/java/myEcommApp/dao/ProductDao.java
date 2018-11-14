package myEcommApp.dao;

import myEcommApp.model.Product;

import java.io.IOException;
import java.util.List;

public interface ProductDao {

    void addProduct(Product product);

    Product getProductById(Long id) throws IOException;

    List<Product> getAllProducts();

    void deleteProduct(Long id) throws IOException;
}
