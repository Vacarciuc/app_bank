package com.app_bank.BankApplication.repository;

import com.app_bank.BankApplication.models.User;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

    @Modifying
    @Query(value = "insert into users(first_name, last_name, email, password, token, code) values" +
            "(:first_name, :last_name, :email, :password, :token, :code)", nativeQuery = true)

    @Transactional
    void registerUser(@Param("first_name") String first_name,
                      @Param("last_name") String last_name,
                      @Param("email") String email,
                      @Param("password") String password,
                      @Param("token") String token,
                      @Param("code") String code);
}


