package com.example.projectc1023i1.repository.impl;

import com.example.projectc1023i1.model.Roles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface IRoleRepo extends JpaRepository<Roles, Integer> {
    @Query(value = "select r from Roles as r where r.roleId = :roleId")
    Roles findByRoleId(@Param("roleId") long id);

    @Override
    Optional<Roles> findById(Integer integer);

    @Query(value = "select r from Roles r where r.roleName = :roleName")
    Roles findByRoleName(@Param("roleName") String roleName);
}
