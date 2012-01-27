package com.cswi.tweetsfs.serviceimpl;

import com.cswi.tweetsfs.dao.UserDAO;
import com.cswi.tweetsfs.model.TweetsfsUser;
import com.cswi.tweetsfs.service.LoginService;
import org.jmock.Expectations;
import org.jmock.Mockery;
import org.jmock.integration.junit4.JMock;
import org.jmock.integration.junit4.JUnit4Mockery;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import static org.hamcrest.Matchers.is;
import static org.junit.Assert.assertThat;

/**
 * User: rsain2
 * Date: 12/14/11
 */
@RunWith(JMock.class)
public class LoginServiceImplTest {
    private Mockery mockery = new JUnit4Mockery();
    private LoginService loginService = mockery.mock(LoginService.class);
    private UserDAO userDAO = mockery.mock(UserDAO.class);
    private LoginServiceImpl loginServiceImpl = new LoginServiceImpl();

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void testLoginReturnsTrueForAValidUser() throws Exception {
       mockery.checking(new Expectations(){{
           one(userDAO).loadByUserNameAndPassword(with(any(String.class)), with(any(String.class)));
           will(returnValue(with(any(TweetsfsUser.class))));
        }});
        loginServiceImpl.setUserDAO(userDAO);
        assertThat(loginServiceImpl.login("ValidUser", "ValidPassword"), is(true));
    }

    @Test
    public void testLoginReturnsFalseForAnInvalidUser() throws Exception {
    	mockery.checking(new Expectations(){{
            one(userDAO).loadByUserNameAndPassword(with(any(String.class)), with(any(String.class)));
            will(returnValue(with(any(TweetsfsUser.class))));
         }});
    	loginServiceImpl.setUserDAO(userDAO);
        assertThat(loginServiceImpl.login("InValidUser", "InValidPassword"), is(false));
    }


}
