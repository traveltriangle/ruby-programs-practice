def distinct_in_array(arr) # print distinct values
    n = arr.length
    hash = Hash.new()
    for i in 0...n
        unless hash[arr[i]]
            hash[arr[i]] = 1
            print "#{arr[i]} "
        end
    end
    return
end
inp = [2,2,1,1,4,4,5,8]
puts distinct_in_array(inp)
