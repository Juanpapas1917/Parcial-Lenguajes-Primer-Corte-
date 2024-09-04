#!/usr/bin/awk -f
{
    if ($0 ~ /^\+$/) {
        print "TOKEN: PLUS"
    } else if ($0 ~ /^\+\+$/) {
        print "TOKEN: DOUBLE_PLUS"
    } else if ($0 ~ /^[0-9]+$/) {
        print "TOKEN: NUMBER"
    } else if ($0 ~ /^[0-9]+\.[0-9]+$/) {
        print "TOKEN: DECIMAL_NUMBER"
    }
}
0

