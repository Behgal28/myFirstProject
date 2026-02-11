package com.spring.myFirstProject.Controller;

import com.spring.myFirstProject.Model.UserModel;
import com.spring.myFirstProject.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    UserService userService;
    @PostMapping
    public UserModel createUser(@RequestBody UserModel user){
        return userService.createUser(user);
    }

    @GetMapping
    public List<UserModel> getAlluser(){
        return userService.getAlluser();
    }


}
