def calc(str)
    cur = Hash.new()
    s = ""
    temp = 0
    for i in 0..str.size()
        if (str[i] == nil)
            next
        end
        if (str[i] == ',')
            if (temp == 0)
                if (s == "Male" or s == "Female")
                    cur.store("Gender", {s => 1})
                end
            end
            if (temp == 4)
               if (s[s.size() - 1] == 'm' and s[s.size() - 2] == 'o' and s[s.size() - 3] == 'c')
                    cur.store("Email", {s => 1})
                end
            end
            if (temp == 5)
                if (s == "21->40" or s == "66->99" or s == "41->65")
                    cur.store("Age", {s => 1})
                end
            end
            if (temp == 6)
                if (s == "Seattle" or s == "Detroit" or s == "Las Vegas" or s == "Chicago")
                    cur.store("City", {s => 1})
                end
            end
            if (temp == 7)
                if (s != "Device")
                    cur.store("Device", {s => 1})
                end
            end
            s = ""
            temp = (temp + 1) % 10
        else 
            s = s + str[i]
        end
    end
    if (s == "morning" or s == "afternoon" or s == "evening")
        cur.store("Order At", {s => 1})
    end
    return cur
end

def add(h, p)
    p.each do |key, val|
        if (h[key] == nil)
            h[key] = p[key]
            next
        end
        val.each do |u, v|
            if (h[key][u] == nil)
                h[key][u] = p[key][u]
            else 
                h[key][u] = h[key][u] + p[key][u]
            end
        end
    end
    return h
end

def my_data_process(arr)
    main = Hash.new()
    for i in 0..arr.size()
        if (arr[i] == nil)
            next
        end
        cur = calc(arr[i])
        main = add(main, cur)
    end
    res = main.to_json
    return res
end