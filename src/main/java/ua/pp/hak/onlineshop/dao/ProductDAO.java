package ua.pp.hak.onlineshop.dao;

import ua.pp.hak.onlineshop.entity.Product;
import ua.pp.hak.onlineshop.model.PaginationResult;
import ua.pp.hak.onlineshop.model.ProductInfo;

public interface ProductDAO {

    public Product findProduct(String code);

    public ProductInfo findProductInfo(String code);

    public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage);

    public PaginationResult<ProductInfo> queryProducts(int page, int maxResult, int maxNavigationPage, String likeName);

    public void save(ProductInfo productInfo);

    public void delete(String code);

}