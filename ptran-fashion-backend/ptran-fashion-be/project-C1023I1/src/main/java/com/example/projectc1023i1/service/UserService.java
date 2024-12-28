package com.example.projectc1023i1.service;

import com.example.projectc1023i1.model.Users;
import com.example.projectc1023i1.repository.impl.IUserRepository;
import com.example.projectc1023i1.service.impl.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.awt.print.Pageable;

@Service
public class UserService implements IUserService {
    @Autowired
    private IUserRepository userRepository;

    @Override
    public Page<Users> getAllUser(org.springframework.data.domain.Pageable pageable) {
        return userRepository.findAll(pageable);
    }
}
