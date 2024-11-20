package com.example.projectc1023i1.model;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "users")
public class Users implements UserDetails { // ddaay laf class lay ra thong tin cua nguoi dung
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Integer userId;

    @Column(name = "img_url")
    private String imgUrl;

    @Column(name = "age")
    private int age;

    @Column(name = "gender")
    private Boolean gender;

    @Column(name = "number_phone")
    private String numberphone;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "address")
    private String address;

    @Column(name = "birthday")
    private Date birthday;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;
    @Column(name = "email")
    private String email;

    @Column(name = "is_active")
    private Boolean isActive;

    @Column(name = "create_at")
    private LocalDateTime createAt;

    @Column(name = "update_at")
    private LocalDateTime updateAt;

    @OneToOne
    @JoinColumn(name = "role_id")
    private Roles role;

    @PrePersist
    public void prePersist() {
        createAt = LocalDateTime.now();
        updateAt = LocalDateTime.now();
    }
    @PreUpdate
    public void preUpdate() {
        updateAt = LocalDateTime.now();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        // cai nay la tao ra danh sach roles
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority( getRole().getRoleName()));
        return authorities; // tra ve role cua nguoi dung
    }

    @Override
    public String getPassword() {
        return password;
    }
    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true; // xem thoi gian hieu luc cua tai khoan
    }

    @Override
    public boolean isAccountNonLocked() {
        return true; // mac dinh la ch bi khoa
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true; // mac dinh la ch bi het han
    }

    @Override
    public boolean isEnabled() {
        return true; // mac dinh la tai khoan da dc kich hoat
    }
}