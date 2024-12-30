package com.example.projectc1023i1.service;

import com.example.projectc1023i1.Exception.UserExepion;
import com.example.projectc1023i1.model.Users;
import com.example.projectc1023i1.repository.impl.IUserRepository;
import com.example.projectc1023i1.request.UpdateUserRequest;
import com.example.projectc1023i1.service.impl.IUserService;
import jdk.jshell.spi.ExecutionControl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.awt.print.Pageable;
import java.util.List;
import java.util.Optional;

@Service
public class UserService implements IUserService {
    @Autowired
    private IUserRepository userRepository;

    @Override
    public Page<Users> getAllUser(org.springframework.data.domain.Pageable pageable) {
        return userRepository.findAll(pageable);
    }

    @Override
    public Users updateUser(Integer userId, UpdateUserRequest updateUserRequest) throws UserExepion {
        Optional<Users> user = Optional.ofNullable(userRepository.findById(userId)
                .orElseThrow(() -> new UserExepion("User Not Found By Id: "+ userId)));

        return null;
    }

    @Override
    public List<Users> searchUsers(String value) {
        return List.of();
    }

    @Override
    public Users findUserById(Integer userId) throws UserExepion {
        Optional<Users> user = userRepository.findById(userId);
        if (user.isPresent()) {
            return user.get();
        } throw new UserExepion("User not found by id: "+ userId);
    }
}
