package com.sinut.securedspringboot.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/greeting")
public class GreetingController {

    @CrossOrigin
    @GetMapping()
    public ResponseEntity<String> getHello() {
        return ResponseEntity.ok("Hello World");
    }

    @CrossOrigin
    @GetMapping("/bye")
    public ResponseEntity<String> getBye() {
        return ResponseEntity.ok("Bye bye!");
    }
}
