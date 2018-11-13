package myEcommApp.dao;

import myEcommApp.model.AuthorizedUser;
import myEcommApp.model.Product;

import java.io.IOException;
import java.util.List;

public interface AuthorizedUserDAO {

    void addAuthorizedUser(AuthorizedUser authorizedUser);

    AuthorizedUser getUserByName(String userName) throws IOException;

    List<AuthorizedUser> getAllAuthorizedUsers();

    void deleteAuthorizedUser(String userName) throws IOException;

    AuthorizedUser getUserByEmail(String email) throws IOException;
}
