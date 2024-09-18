package com.devgarden.login_api.repository;

import com.devgarden.login_api.model.Permission;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PermissionRepository extends JpaRepository<Permission, Integer> {
}
