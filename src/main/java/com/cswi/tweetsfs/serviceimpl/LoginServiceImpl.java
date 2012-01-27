package com.cswi.tweetsfs.serviceimpl;

import com.cswi.tweetsfs.dao.UserDAO;
import com.cswi.tweetsfs.model.TweetsfsUser;
import com.cswi.tweetsfs.service.LoginService;

/**
 * User: rsain2
 * Date: 12/14/11
 */
public class LoginServiceImpl implements LoginService {

    private UserDAO userDAO;

    @Override
    public Boolean login(final String userName, final String password) {
        // check for the input against values from DB.
        // Stub out for TDD
        TweetsfsUser user = userDAO.loadByUserNameAndPassword(userName, password);
        String userNameFromDb = "ValidUser";
        String passwordFromDb = "ValidPassword";
        return (userName.equalsIgnoreCase(userNameFromDb) && password.equals(passwordFromDb));
    }

    public void setUserDAO(UserDAO userDAO) {
       System.out.println("called");
       this.userDAO = userDAO;
    }
}
