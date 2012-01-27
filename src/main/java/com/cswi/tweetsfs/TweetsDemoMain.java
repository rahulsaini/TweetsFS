package com.cswi.tweetsfs;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * User: rsain2
 * Date: 12/9/11
 */
public class TweetsDemoMain {
    public static void main(String[] args) {
      /*  System.out.println("Tweets Demo Main Program .. Test for Spring JDBCTemplate ..");
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-config.xml", TweetsDemoMain.class);
        DataSource dataSource = (DataSource) ac.getBean("mysqlDataSource");
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.execute("insert into tweetsfs_user (id, screen_name, user_name, full_name, password, email, active) " +
        		"values (1, 'testUser', 'user1', 'User 1','pass1','user@email.com','1')");
        List userList = jdbcTemplate.queryForList("select id, screen_name, user_name, full_name, password, email, active" +
        		" from tweetsfs_user");
        System.out.println("Results Size = " + userList.size());*/
    }
}
