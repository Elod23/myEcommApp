package myEcommApp.dao;

import myEcommApp.model.Product;

import java.io.IOException;
import java.util.List;

public interface ProductDao {

    void addProduct(Product product);

    Product getProductById(int id) throws IOException;

    List<Product> getAllProducts();

    void deleteProduct(int id) throws IOException;
}
