/*package myEcommApp.services;

import myEcommApp.dao.AuthorizedUserDAO;
import myEcommApp.model.AuthorizedUser;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class AuthorizedUserService implements UserDetailsService {

    @Autowired
    AuthorizedUserDAO authorizedUserDAO;

    public void addAuthorizedUser(AuthorizedUser authorizedUser) {
        authorizedUserDAO.addAuthorizedUser(authorizedUser);
    }

    public AuthorizedUser getUserByName(String userName) throws IOException {
        AuthorizedUser authorizedUser = authorizedUserDAO.getUserByName(userName);
        return authorizedUser;
    }

    public List<AuthorizedUser> getAllAuthorizedUsers() {
        List<AuthorizedUser> authorizedUsers = authorizedUserDAO.getAllAuthorizedUsers();
        return authorizedUsers;
    }

    public void deleteAuthorizedUser(String userName) throws IOException {
        authorizedUserDAO.deleteAuthorizedUser(userName);
    }

    public AuthorizedUser getUserByEmail(String email) throws IOException {
        AuthorizedUser authorizedUser = authorizedUserDAO.getUserByEmail(email);
        return authorizedUser;
    }

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        try {
            AuthorizedUser authorizedUser = authorizedUserDAO.getUserByName(username);


            List<AuthorizedUser> authorizedUsers = authorizedUserDAO.getAllAuthorizedUsers();

            List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
            grantedAuthorities.add(new SimpleGrantedAuthority("admin"));
            UserDetails userDetails = new User(authorizedUser.getName(), authorizedUser.getPassword(), grantedAuthorities);

            return userDetails;
        } catch (IOException e) {
            throw new UsernameNotFoundException("the requested username was not found!");
        }
    }
}*/