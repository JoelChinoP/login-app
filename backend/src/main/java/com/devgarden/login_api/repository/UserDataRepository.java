package com.devgarden.login_api.repository;

import com.devgarden.login_api.model.UserData;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDataRepository extends JpaRepository<UserData, Integer> {
}
