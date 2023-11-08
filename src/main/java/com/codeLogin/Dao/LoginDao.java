package com.codeLogin.Dao;

import com.codeLogin.Do.DbConnection;
import com.codeLogin.model.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
    private Connection connection;

    public LoginDao() {
        connection=DbConnection.getConnection();
    }
    private final String SELECT_QUERY="SELECT username,password FROM auth WHERE username=? AND password=?;";

    public Login loginUser(String username, String password) {
        Login login=null;
        try {
            System.out.println("hellooo");
            PreparedStatement preparedStatement=connection.prepareStatement(SELECT_QUERY);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet= preparedStatement.executeQuery();
            if(resultSet.next()){
                login=new Login();
                login.setUsername(resultSet.getString("username"));
                login.setPassword(resultSet.getString("password"));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return login;

    }
}
