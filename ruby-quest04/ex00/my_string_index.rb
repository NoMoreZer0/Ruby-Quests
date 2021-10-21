def my_string_index(str, ch)
    pos = 0
    str.each_char{ |c|
        if (c == ch)
            return pos
        end
        pos += 1
    }
    return -1
end