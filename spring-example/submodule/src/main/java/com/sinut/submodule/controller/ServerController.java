package com.sinut.submodule.controller;

import com.sinut.submodule.model.Response;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ServerController {

    @CrossOrigin
    @GetMapping("/")
    public ResponseEntity<Response> getHome() {
        return ResponseEntity.ok(new Response("Hello World"));
    }

}
