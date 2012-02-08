package com.cswi.tweetsfs.closure;

/**
 * Created by IntelliJ IDEA.
 * User: RahulSaini
 * Date: May 2, 2010
 * Time: 4:24:03 PM
 * To change this template use File | Settings | File Templates.
 */
public class FilteredSource<T> implements Source<T> {
    private final Source<T> source;
    private final Filter<T> filter;

    public FilteredSource(Filter<T> filter, Source<T> source) {
        this.source = source;
        this.filter = filter;
    }

    public void forEach(Closure<T> closure) {
        source.forEach(FilteringClosure.filter(filter, closure));
    }

    public static <T> Source<T> filter(Filter<T> filter, Source<T> source) {
        return new FilteredSource<T>(filter, source);
    }
}