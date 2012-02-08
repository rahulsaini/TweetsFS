package com.cswi.tweetsfs.closure;

/**
 * Created by IntelliJ IDEA.
 * User: RahulSaini
 * Date: May 2, 2010
 * Time: 4:18:55 PM
 * To change this template use File | Settings | File Templates.
 */

public class CompositeClosure<T> implements Closure<T> {

    public static <T> Closure<T> allOf(Closure<T>... closures) {
        return new CompositeClosure<T>(closures);
    }

    private final Closure<T>[] closures;

    public CompositeClosure(Closure<T>... closures) {
        this.closures = closures;
    }

    public void on(T item) {
        for (Closure<T> closure : closures) {
            closure.on(item);
        }
    }
}