package myEcommApp.authorities;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

public class ValidationAuthorities implements UserDetails {

    private static Collection<GrantedAuthority> authorities;

    private String username;

    private String password;

    private boolean accountAvailability;

    private boolean accountLock;

    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public boolean isAccountNonExpired() {
        return accountAvailability;
    }

    public boolean isAccountNonLocked() {
        return !accountLock;
    }

    public boolean isCredentialsNonExpired() {
        return (password != null && username != null);
    }

    public boolean isEnabled() {
        return (accountAvailability && !accountLock);
    }
}
