package com.cswi.tweetsfs.dao;

import com.cswi.tweetsfs.model.TweetsfsUser;
import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import static org.junit.Assert.assertNotNull;

/**
 * User: rsain2
 * Date: 12/14/11
 */
public class UserDAOImpl implements UserDAO{

    private BasicDataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    public void setDataSource(BasicDataSource dataSource) {
        this.dataSource = dataSource;
    }

    public TweetsfsUser loadByUserNameAndPassword(String userName, String password) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        assertNotNull(jdbcTemplate);
        return null;
    }
}
