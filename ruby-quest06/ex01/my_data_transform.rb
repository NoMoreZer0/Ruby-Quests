def transform(str, temp)
    if (temp != 5 and temp != 9 and temp != 4)
        return str
    end
    if (temp == 5)
        val = 0
        bad = 0
        for i in 0..str.size()
            if (str[i] == nil)
                next
            end
            if (str[i] == '0' or str[i] == '1' or str[i] == '2' or str[i] == '3' or str[i] == '4' or
                str[i] == '5' or str[i] == '6' or str[i] == '7' or str[i] == '8' or str[i] == '9')
              val = val * 10 + (str[i].ord - '0'.ord)
            else
                bad = 1
            end         
        end
        if (bad == 1)
            return str
        end
        if (1 <= val and val <= 20)
            str = "1->20"
        elsif (21 <= val and val <= 40)
            str = "21->40"
        elsif (41 <= val and val <= 65)
            str = "41->65"
        elsif (66 <= val and val <= 99)
            str = "66->99"
        end
    end
    if (temp == 9)
        stime = ""
        flag = 0
        bad = 0
        for i in 0..str.size()
            if (str[i] == nil)
                next
            end
            if (flag == 1)
                if (str[i] == '0' or str[i] == '1' or str[i] == '2' or str[i] == '3' or str[i] == '4' or
                str[i] == '5' or str[i] == '6' or str[i] == '7' or str[i] == '8' or str[i] == '9' or str[i] == ':')
                    stime = stime + str[i]
                else
                    bad = 1
                end
            elsif (str[i] == ' ')
                flag = 1
            end
        end
        if (bad == 1)
            return str
        end
        time = (stime[0].ord - '0'.ord)
        time = time * 10 + (stime[1].ord - '0'.ord)
        min = (stime[3].ord - '0'.ord)
        min = min * 10 + (stime[4].ord - '0'.ord)
        if (6 <= time and time < 12)
            if ((time == 11 and min <= 59) or (time < 11))
                str = "morning"
            end
        elsif (13 <= time and time < 18)
            if ((time == 17 and min <= 59) or (time < 18))
                str = "afternoon"
            end
        else 
            str = "evening"
        end
    end
    if (temp == 4)
        good = false
        res = ""
        for i in 0..str.size()
            if (good == true and str[i] != nil)
                res = res + str[i]
            end
            if (str[i] == '@')
                good = true
            end
        end
        if (good == false)
            return str
        end
        str = res
    end
    return str
end

def my_data_transform(str)
    temp = 0
    curS = ""
    res = Array.new()
    ans = ""
    for i in 0..str.size()
        if (str[i] == nil)
            next
        end
        if (str[i] != ',' and str[i] != "\n")
            curS = curS + str[i]
        else
            ans = ans + transform(curS, temp)
            if (str[i] == ',')
                ans = ans + ','
            else 
                res.push(ans)
                ans = ""
            end       
            curS = ""
            temp = (temp + 1) % 10
        end
    end
    return res
end