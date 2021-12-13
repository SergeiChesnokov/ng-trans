package com.example.ngtrans.auth

import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.security.core.userdetails.User
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.crypto.password.NoOpPasswordEncoder
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.security.provisioning.InMemoryUserDetailsManager
import org.springframework.security.provisioning.JdbcUserDetailsManager
import javax.sql.DataSource

@Configuration
class AuthConf {

    @Bean
    fun userDetailsService(datasource: DataSource): UserDetailsService {
        return JdbcUserDetailsManager(datasource)
    }

    @Bean
    fun passwordEncoder(): PasswordEncoder{
        return NoOpPasswordEncoder.getInstance()
    }

}