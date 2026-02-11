package com.spring.myFirstProject.Service;

import com.spring.myFirstProject.Model.UserModel;
import com.spring.myFirstProject.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
   @Autowired
    UserRepository userRepository;
    public UserModel createUser(UserModel user) {
        System.out.println("This is my UserName : "+ user.getUserName());
        System.out.println("This is my Password : "+ user.getPassword());
        return userRepository.save(user);


    }

    public List<UserModel> getAlluser() {
        return userRepository.findAll();
    }
}
