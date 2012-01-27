package com.cswi.tweetsfs.model;

/**
 * User: rsain2
 * Date: 12/14/11
 */
public class TweetsfsUser {
    private Long tweetsFsId;
    private String tweetsFsScreenName;
    private String tweetsFsUserName;
    private String tweetsFsFullName;
    private String password;
    private boolean active;

    public Long getTweetsFsId() {
        return tweetsFsId;
    }

    public void setTweetsFsId(Long tweetsFsId) {
        this.tweetsFsId = tweetsFsId;
    }

    public String getTweetsFsScreenName() {
        return tweetsFsScreenName;
    }

    public void setTweetsFsScreenName(String tweetsFsScreenName) {
        this.tweetsFsScreenName = tweetsFsScreenName;
    }

    public String getTweetsFsUserName() {
        return tweetsFsUserName;
    }

    public void setTweetsFsUserName(String tweetsFsUserName) {
        this.tweetsFsUserName = tweetsFsUserName;
    }

    public String getTweetsFsFullName() {
        return tweetsFsFullName;
    }

    public void setTweetsFsFullName(String tweetsFsFullName) {
        this.tweetsFsFullName = tweetsFsFullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
