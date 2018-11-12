package myEcommApp.dao.implementations;

import myEcommApp.dao.ProductDao;
import myEcommApp.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.io.IOException;
import java.util.List;

@Repository
@Transactional
public class ProductDaoImp implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public Product getProductById(int id)  throws IOException {
        Session session = sessionFactory.getCurrentSession();
        Product product =(Product) session.get(Product.class, id);
        if (product == null)
            throw new IOException("No such product found!");
        return product;
    }

    public List<Product> getAllProducts() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> products = query.list();
        session.flush();

        return products;
    }

    public void deleteProduct(int id) throws IOException{
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }
}
