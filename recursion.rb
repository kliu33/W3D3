def range(start, fin)
    return [] if fin == start

    return [start] + range(start+1, fin)
end

def exp(b, n)
    return 1 if n == 0

    return b * exp(b, n - 1)
end

def exp2(b, n)
    return 1 if n == 0
    return b if n == 1

    return exp(b, n/2) * exp(b, n/2) if n.even?
    return b * (exp(b, (n-1)/2) * exp(b, (n-1)/2))
end