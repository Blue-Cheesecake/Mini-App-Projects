package com.sinut.securedspringboot.controller;

import com.sinut.securedspringboot.model.request.AuthenticationRequest;
import com.sinut.securedspringboot.service.AuthenticationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {

    private final AuthenticationService authService;

    @CrossOrigin
    @PostMapping("/authenticate")
    public ResponseEntity<String> authenticate(@RequestBody AuthenticationRequest request) {
        final String token = authService.authenticate(request);
        if (token == null) {
            return ResponseEntity.badRequest().body("Some Error Occurred");
        }
        return ResponseEntity.ok(token);
    }
}
