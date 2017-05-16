package ua.pp.hak.onlineshop.dao;

import ua.pp.hak.onlineshop.entity.Order;
import ua.pp.hak.onlineshop.model.*;

import java.util.List;

public interface OrderDAO {

    public void saveOrder(CartInfo cartInfo);

    public PaginationResult<OrderInfo> listOrderInfo(int page, int maxResult, int maxNavigationPage);

    public OrderInfo getOrderInfo(String orderId);

    public List<OrderDetailInfo> listOrderDetailInfos(String orderId);

    public void updateCustomerInfo(OrderInfo orderInfo);

    public Order findOrder(String orderId);

    public void delete (String orderId);
}