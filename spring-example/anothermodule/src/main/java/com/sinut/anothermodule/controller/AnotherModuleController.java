package com.sinut.anothermodule.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AnotherModuleController {

    @GetMapping("/hello")
    public String greet() {
        return "Hello World";
    }
}
