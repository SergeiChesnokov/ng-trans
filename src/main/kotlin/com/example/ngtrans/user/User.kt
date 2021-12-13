package com.example.ngtrans.user

import org.springframework.data.annotation.Id
import org.springframework.data.relational.core.mapping.Table

@Table("users")
class User(
    @Id
    val id: Long,
    val phone: String,
    val username: String,
    val password: String,
    val authorities: String
) {

}