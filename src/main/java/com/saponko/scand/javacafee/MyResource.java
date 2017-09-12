package com.saponko.scand.javacafee;

import com.saponko.scand.javacafee.entities.Order;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 * Root resource (exposed at "myresource" path)
 */
@Path("myresource")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class MyResource {

    /*@QueryParam("orders")List<SubOrder> orders,*/
    @POST
    public Order getIt(Order order) {
        //List<SubOrder> list = new ArrayList<>(orders);


        /*try {
            DBAssist assist = new DBAssist();
            assist.getInsertAddressPreparedStatement(order.getProductId(), order.getProductQuantity()).execute();
            assist.getInsertOrderPreparedStatement(order.getProductId(), order.getProductQuantity()).execute();
            for (SubOrder order : orders) {

                assist.getInsertOrderPreparedStatement(order.getProductId(), order.getProductQuantity()).execute();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }*/
        return order;
    }
}
