package com.cswi.tweetsfs.closure;

/**
 * Created by IntelliJ IDEA.
 * User: RahulSaini
 * Date: May 2, 2010
 * Time: 4:21:47 PM
 * To change this template use File | Settings | File Templates.
 */
public interface Source<T> {
    void forEach(Closure<T> closure);
}
