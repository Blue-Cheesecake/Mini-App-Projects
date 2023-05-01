package com.sinut.securedspringboot.service;

import com.sinut.securedspringboot.model.request.AuthenticationRequest;
import com.sinut.securedspringboot.util.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {

    private final JwtUtil jwtUtil;
    // Since we are using AuthManager, we should also implement this on Configuration
    private final AuthenticationManager authManager;
    private final UserDetailsService userDetailsService;

    public String authenticate(AuthenticationRequest request) {
        authManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        request.getUsername(),
                        request.getPassword()
                )
        );

        final UserDetails user = userDetailsService.loadUserByUsername(request.getUsername());
        if (user == null) {
            return "";
        }
        return jwtUtil.generateToken(user);
    }
}
