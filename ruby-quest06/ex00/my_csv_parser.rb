def my_csv_parser(str, ch)
    ans = Array.new()
    cur = Array.new()
    for i in 0..str.size()
        if (str[i] == ch)
            cur.push(str[i - 1])
        elsif (str[i] == "\n")
            if (str[i - 1] != ch)
                cur.push(str[i - 1])
            end    
            ans.push(cur)
            cur = Array.new()
        end
    end
    return ans
end