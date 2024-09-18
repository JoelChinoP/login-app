package com.devgarden.login_api.repository;

import com.devgarden.login_api.model.RoleUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleUserRepository extends JpaRepository<RoleUser, Integer> {
}
