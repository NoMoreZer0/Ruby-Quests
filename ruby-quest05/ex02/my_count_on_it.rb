def my_count_on_it(arr)
    ans = arr
    for i in 0..arr.length
        if (arr[i] != nil)
          ans[i] = arr[i].size
        end
    end
    return ans
end