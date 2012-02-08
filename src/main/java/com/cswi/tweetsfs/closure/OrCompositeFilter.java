package com.cswi.tweetsfs.closure;

import java.util.Arrays;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: RahulSaini
 * Date: May 2, 2010
 * Time: 4:22:47 PM
 * To change this template use File | Settings | File Templates.
 */
public class OrCompositeFilter<T> implements Filter<T> {
    private final List<Filter<T>> filters;

    public static <T> OrCompositeFilter<T> allOf(Filter<T>... filters) {
        return new OrCompositeFilter(Arrays.asList(filters));
    }

    public OrCompositeFilter(List<Filter<T>> filters) {
        this.filters = filters;
    }

    public boolean include(T lineItem) {
        for (Filter<T> filter : filters) {
            if (filter.include(lineItem)) {
                return true;
            }
        }
        return false;
    }
}
