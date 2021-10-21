def my_array_uniq(arr)
    used = Array.new(100, false)
    ans = Array.new
    for i in 0..arr.length
        if (arr[i] == nil)
            next
        end
        if (used[arr[i]] == false)
            used[arr[i]] = true
            ans.push(arr[i])
        end
    end
    return ans
end