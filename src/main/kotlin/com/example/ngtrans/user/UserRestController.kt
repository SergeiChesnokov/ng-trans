package com.example.ngtrans.user

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class UserRestController {

    @GetMapping("/hello")
    fun hello(): String{
        return "Hello"
    }
}