package com.devgarden.login_api.repository;

import com.devgarden.login_api.model.Role;
import com.devgarden.login_api.model.User;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;


@ExtendWith(SpringExtension.class)
@SpringBootTest
public class UserRepositoryTest {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Test
    public void testCreateUserWithRoles() {
        // Crear usuario
        User user = new User();
        user.setUsername("johndoe");
        user.setEmail("johndoe@example.com");
        user.setPassword("password123");
        user.setSalt("randomSalt");

        // Crear rol
        Role roleAdmin = new Role();
        roleAdmin.setName("ALUMNO");
        roleAdmin = roleRepository.save(roleAdmin);

        Assertions.assertNotNull(roleAdmin);
        Assertions.assertEquals("ALUMNO", roleAdmin.getName());
    }
}
