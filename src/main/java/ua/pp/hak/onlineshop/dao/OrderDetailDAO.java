package ua.pp.hak.onlineshop.dao;

import ua.pp.hak.onlineshop.entity.OrderDetail;
import ua.pp.hak.onlineshop.model.OrderInfo;

public interface OrderDetailDAO {
    public OrderDetail findOrderDetail(String orderDetailId);

    public void updateOrderDetails(OrderInfo orderInfo);

    public void deleteOrderDetails(OrderInfo orderInfo);
}
