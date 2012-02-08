package com.cswi.tweetsfs.closure;

/**
 * Created by IntelliJ IDEA.
 * User: RahulSaini
 * Date: May 2, 2010
 * Time: 4:15:27 PM
 * To change this template use File | Settings | File Templates.
 */
public interface Filter<T> {
               boolean include(T item);
}
