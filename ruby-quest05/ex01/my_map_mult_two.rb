def my_map_mult_two(arr)
    for i in 0..arr.length
        if (arr[i] != nil)
            arr[i] = arr[i] * 2
        end
    end
    return arr;
end