package myEcommApp.dao.implementations;

import myEcommApp.dao.AuthorizedUserDAO;
import myEcommApp.model.AuthorizedUser;
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
public class AuthorizedUserDaoImp implements AuthorizedUserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void addAuthorizedUser(AuthorizedUser authorizedUser) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(authorizedUser);
        session.flush();
    }

    public AuthorizedUser getUserByName(String userName) throws IOException {
        Session session = sessionFactory.getCurrentSession();
        AuthorizedUser user = session.get(AuthorizedUser.class, userName);
        if (user == null)
            throw new IOException("No such product found!");
        return user;
    }

    public List<AuthorizedUser> getAllAuthorizedUsers() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Authorized_Users");
        List<AuthorizedUser> authorizedUsers = query.list();
        session.flush();

        return authorizedUsers;
    }

    public void deleteAuthorizedUser(String userName) throws IOException {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getUserByName(userName));
        session.flush();
    }

    public AuthorizedUser getUserByEmail(String email) throws IOException {
        Session session = sessionFactory.getCurrentSession();
        AuthorizedUser user = session.get(AuthorizedUser.class, email);
        if (user == null)
            throw new IOException();
        return user;
    }
}
