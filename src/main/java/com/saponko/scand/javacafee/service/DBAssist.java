package com.saponko.scand.javacafee.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBAssist {

    private final static String SQL_FINDALL = "SELECT * FROM ";
    private final static String SQL_INSERT_ORDER = "INSERT INTO orders (productId, productQuantity) VALUES (?,?)";
    private final static String SQL_INSERT_ADDRESS = "INSERT INTO addresses (userid, name, phone, street, house, flat) VALUES (?,?,?,?,?,?)";


    private Connection connection;

    public DBAssist() throws SQLException {
        connection = DBConnector.getConnection();
    }

    public Connection getConnection() {
        return connection;
    }

    public PreparedStatement getAllPreparedStatement(String tableName){
        try  {
            return connection.prepareStatement(SQL_FINDALL + tableName);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public PreparedStatement getInsertOrderPreparedStatement(String productId, String productQuantity){
        try  {
            PreparedStatement statement= connection.prepareStatement(SQL_INSERT_ORDER);
            statement.setString(1,productId);
            statement.setString(2,productQuantity);
            return statement;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    public PreparedStatement getInsertAddressPreparedStatement(String userid, String name, String phone, String street, String house, String flat ){
        try  {
            PreparedStatement statement= connection.prepareStatement(SQL_INSERT_ADDRESS);
            statement.setString(1, userid);
            statement.setString(2, name);
            statement.setString(3, phone);
            statement.setString(4, street);
            statement.setString(5, house);
            statement.setString(6, flat);
            return statement;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void close(PreparedStatement statement, Connection connection) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                if (connection != null) {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }
}
