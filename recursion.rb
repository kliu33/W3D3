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

def fibonacci(n)
    return [0,1].take(n) if n <= 2

    prev_fibs = fibonacci(n-1)
    prev_fibs << (prev_fibs[-2] + prev_fibs[-1]) 
    prev_fibs
end

def it_fib(n)
    fib_arr = [0, 1]
    i = 2
    while i < n
        fib_arr << fib_arr[i-2] + fib_arr[i-1]
        i += 1
    end
    return fib_arr
end

def bsearch(arr, target)
    if arr.length <= 1
        return 0 if target == arr[0]
        return "not found"
    end
    mid = (arr.length / 2).floor
    return mid if arr[mid] == target
    left = arr[0...mid]
    right = arr[mid + 1..-1]
    if target < arr[mid]    
        return bsearch(left, target) 
    else
        right_bsearch = bsearch(right, target)
        return right_bsearch if right_bsearch == "not found"
        return right_bsearch + mid + 1
    end

end
def merge_sort(array)
        if array.length <= 1
            return array
        end
        mid = (array.length / 2).floor
        left = array[0...mid]
        right = array[mid..-1]


        #if array.length == 2
            left_ele = merge_sort(left)
            right_ele = merge_sort(right)
            return left_ele.concat(right_ele) if left_ele[0] < right_ele[0]
            return right_ele.concat(left_ele) if right_ele[0] <= left_ele[0]
        #end
end

