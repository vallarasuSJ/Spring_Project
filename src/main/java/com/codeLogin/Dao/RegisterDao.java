package com.codeLogin.Dao;

import com.codeLogin.Do.DbConnection;
import com.codeLogin.model.Register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {

    private final Connection connection;
    private final String INSERT_USER = "INSERT INTO register(firstname,lastname,gender,city,state,password) VALUES (?,?,?,?,?,?); ";
    private final String SELECT_USER="SELECT * FROM register WHERE firstname=?";
    public RegisterDao() {
        connection=DbConnection.getConnection();
    }
    public Register registerUser(String firstname, String lastname, String gender, String city, String state, String password) {
        Register register=null;

        try {
            PreparedStatement preparedStatement=connection.prepareStatement(INSERT_USER);
            preparedStatement.setString(1,firstname);
            preparedStatement.setString(2,lastname);
            preparedStatement.setString(3,gender);
            preparedStatement.setString(4,city);
            preparedStatement.setString(5,state);
            preparedStatement.setString(6,password);

            int result=preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return register;
    }




    }

