package ua.pp.hak.onlineshop.dao;

import ua.pp.hak.onlineshop.entity.Account;

public interface AccountDAO {

    public Account findAccount(String userName);

}
