package com.devgarden.login_api.repository;

import com.devgarden.login_api.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}
