package com.saponko.scand.javacafee;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.saponko.scand.javacafee.entities.MenuItem;
import com.saponko.scand.javacafee.entities.Product;
import com.saponko.scand.javacafee.service.DBAssist;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

@Path("menu")
public class Menu {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<MenuItem> getMenu() throws SQLException {
        List<MenuItem> listMenuItems = new ArrayList<>();
        DBAssist assist = new DBAssist();
        PreparedStatement statement = new DBAssist().getAllPreparedStatement("menu_items");
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            listMenuItems.add(new MenuItem(
                    resultSet.getInt(1),
                    resultSet.getString(2),
                    resultSet.getString(3).charAt(0),
                    resultSet.getInt(4)
            ));
        }
        assist.close(statement, assist.getConnection());
        return listMenuItems;
    }
    @GET
    @Path("config")
    @Produces(MediaType.APPLICATION_JSON)
    public String getConfig() throws SQLException, JsonProcessingException {
        Map<String, Integer> config = new HashMap<>();
        DBAssist assist = new DBAssist();
        PreparedStatement statement = new DBAssist().getAllPreparedStatement("configuration");
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()) {
            config.put(
                    resultSet.getString(1),
                    resultSet.getInt(2)
            );
        }
        assist.close(statement, assist.getConnection());
        ObjectMapper mapper = new ObjectMapper();
        String res = mapper.writeValueAsString(config);
        return res;
    }
}
