package com.example.projectc1023i1.controller.admin;

import com.example.projectc1023i1.model.Users;
import com.example.projectc1023i1.service.impl.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/admin/")
public class AdminController {
    @Autowired
    private IUserService userService;

    @GetMapping("/get-all-user")
    public ResponseEntity<?> getAllUser(@RequestParam("size") int size
                                        , @RequestParam("page") int page) {
        if (size <= 0 || page <= 0) {
            size = 10;
            page = 0;
        }
        Pageable pageable =  PageRequest.of(page,size);
        Page<Users> page1 = userService.getAllUser( pageable);

        return ResponseEntity.ok(page1);
    }
}
