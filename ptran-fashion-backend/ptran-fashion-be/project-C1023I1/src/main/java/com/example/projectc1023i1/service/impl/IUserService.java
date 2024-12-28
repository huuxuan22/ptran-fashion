package com.example.projectc1023i1.service.impl;

import com.example.projectc1023i1.model.Users;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface IUserService {
    Page<Users> getAllUser(Pageable pageable);
}
