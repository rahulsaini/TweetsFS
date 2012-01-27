package com.cswi.tweetsfs.dao;

import com.cswi.tweetsfs.model.TweetsfsUser;

/**
 * User: rsain2
 * Date: 12/14/11
 */
public interface UserDAO {

    String NAME = "userDAO";

    public TweetsfsUser loadByUserNameAndPassword(String userName, String password);
}
