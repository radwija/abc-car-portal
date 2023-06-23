package com.abccarportal.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.abccarportal.model.User;

@RestController
@RequestMapping("/auth/")
public class AuthController {

    @GetMapping("login")
    public ResponseEntity<?> authLogin(@RequestBody User user) {
        return ResponseEntity.ok(user);
    }
}
