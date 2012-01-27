package com.cswi.tweetsfs.service;

import com.cswi.tweetsfs.dao.UserDAO;

/**
 * User: rsain2
 * Date: 12/14/11
 */
public interface LoginService {

    String NAME = "loginService";

    Boolean login(String userName, String password);

    void setUserDAO(UserDAO userDAO);
}
