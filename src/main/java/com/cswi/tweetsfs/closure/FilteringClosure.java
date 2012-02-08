package com.cswi.tweetsfs.closure;

/**
 * Created by IntelliJ IDEA.
 * User: RahulSaini
 * Date: May 2, 2010
 * Time: 4:23:31 PM
 * To change this template use File | Settings | File Templates.
 */
public class FilteringClosure<T> implements Closure<T> {
    private final Closure<T> onSuccessClosure;
    private final Filter<T> filter;
    private final Closure<T> onFailClosure;

    public static <T> FilteringClosure<T> withFilterClosure(Object filteringClosure) {
        return new FilteringClosure<T>((Filter<T>)filteringClosure, (Closure<T>)filteringClosure);
    }

    public static <T> FilteringClosure<T> withFilterClosure(Object filteringClosure, Closure<T> onFailClosure) {
        return new FilteringClosure<T>((Filter<T>)filteringClosure, (Closure<T>)filteringClosure, onFailClosure);
    }

    public static <T> FilteringClosure<T> filter(Filter<T> filter, Closure<T> closure) {
        return new FilteringClosure<T>(filter, closure);
    }

    public static <T> FilteringClosure<T> filter(Filter<T> filter, Closure<T> onSuccessClosure, Closure<T> onFailClosure) {
        return new FilteringClosure<T>(filter, onSuccessClosure, onFailClosure);
    }

    private FilteringClosure(Filter<T> filter, Closure<T> onSuccessClosure) {
        this(filter, onSuccessClosure, new Closure<T>() {
            public void on(T item) {
            }
        });
    }

    private FilteringClosure(Filter<T> filter, Closure<T> onSuccessClosure, Closure<T> onFailClosure) {
        this.filter = filter;
        this.onSuccessClosure = onSuccessClosure;
        this.onFailClosure = onFailClosure;
    }

    public void on(T item) {
        if (filter.include(item)) {
            onSuccessClosure.on(item);
            return;
        }
        onFailClosure.on(item);
    }
}