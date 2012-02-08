package com.cswi.tweetsfs.closure;

/**
 * Created by IntelliJ IDEA.
 * User: RahulSaini
 * Date: May 2, 2010
 * Time: 4:14:55 PM
 * To change this template use File | Settings | File Templates.
 */

import java.util.Arrays;
import java.util.List;

public class AndCompositeFilter<T> implements Filter<T> {
    private final List<Filter<T>> filters;

    public static <T> AndCompositeFilter<T> allOf(Filter<T>... filters) {
        return new AndCompositeFilter(Arrays.asList(filters));
    }

    public AndCompositeFilter(List<Filter<T>> filters) {
        this.filters = filters;
    }

    public boolean include(T lineItem) {
        for (Filter<T> filter : filters) {
            if (!filter.include(lineItem)) {
                return false;
            }
        }
        return true;
    }
}

