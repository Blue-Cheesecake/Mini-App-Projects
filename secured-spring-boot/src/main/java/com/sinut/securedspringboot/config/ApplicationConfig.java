package com.sinut.securedspringboot.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@Configuration
public class ApplicationConfig {

    // NOTE: This mimic the user in Database
    private final static List<UserDetails> APPLICATION_USERS = Arrays.asList(
            new User("sinutwat@hotmail.com", "123456", Collections.singleton(new SimpleGrantedAuthority("ADMIN"))),
            new User("sprite@hotmail.com", "123456", Collections.singleton(new SimpleGrantedAuthority("USER")))
    );

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
        return config.getAuthenticationManager();
    }

    /**
     * Customized UserDetailsService. We need to tell authProvider to use this UserDetailsService
     *
     * @return [UserDetailsService]
     */
    @Bean
    public UserDetailsService userDetailsService() {
        // NOTE: Instead of using APPLICATION_USERS, we should implement the repository that actually retrieve
        // user data from database
        return username -> APPLICATION_USERS
                .stream()
                .filter(userDetails -> userDetails.getUsername().equals(username))
                .findFirst()
                .orElseThrow(() -> new UsernameNotFoundException("Not Found"));
    }

    /**
     * Customized AuthenticationProvider
     * This method will apply the customized configuration such as UserDetailsService, or PasswordEncoder
     *
     * @return [AuthenticationProvider]
     */
    @Bean
    public AuthenticationProvider authenticationProvider() {
        final DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
        return authProvider;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        // In production app, we should use other encryption such as BCrypt
        return NoOpPasswordEncoder.getInstance();
    }
}
