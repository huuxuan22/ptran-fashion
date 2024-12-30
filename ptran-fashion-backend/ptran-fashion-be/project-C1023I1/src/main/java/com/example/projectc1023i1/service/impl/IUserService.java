package com.example.projectc1023i1.service.impl;

import com.example.projectc1023i1.Exception.UserExepion;
import com.example.projectc1023i1.model.Users;
import com.example.projectc1023i1.request.UpdateUserRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IUserService {
    Page<Users> getAllUser(Pageable pageable);
    public Users updateUser(Integer userId, UpdateUserRequest updateUserRequest) throws UserExepion;
    List<Users> searchUsers(String value);
    Users findUserById (Integer userId) throws UserExepion;
}
