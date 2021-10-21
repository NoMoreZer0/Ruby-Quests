def my_is_sort(arr)
    asc = Array.new
    desc = Array.new
    for x in arr
        asc.push(x)
        desc.push(x)
    end
    asc.sort!
    desc.sort!
    desc.reverse!
    if (asc != arr and desc != arr)
        return false
    end
    return true
end