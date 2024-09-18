package com.devgarden.login_api.repository;

import com.devgarden.login_api.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {

}
