package com.app_bank.BankApplication.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
public class User {

    @Id
    private int user_id;

    @NotEmpty(message = "The first name cannot be empty")
    @Size(min = 3)
    private String first_name;
    @NotEmpty
    @Size(min = 3)
    private String last_name;
    @Email
    @NotEmpty
    @Pattern(regexp = "([a-zA-Z0-9]+(?:[._+-][a-zA-Z0-9]+)*)@([a-zA-Z0-9]+(?:[.-][a-zA-Z0-9]+)*[.][a-zA-Z]{2,})")
    private String email;
    @NotEmpty
    @NotNull
    private String password;
    private String token;
    private String code;
    private int verified;
    private LocalDate verified_at;
    private LocalDateTime create_at;
    private LocalDateTime update_at;

    14:20 x17
}
