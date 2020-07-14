def binary_search (arr,key)  # a is the array and key is the value to be found
    low = 0
    high = arr.length-1

    while (low <= high)
        mid = low+((high-low)/2)

        if arr[mid] == key
            return mid
        elsif arr[mid] < key
            low=mid+1
        else
            high=mid-1
        end

    end

    return "Value not found in array"
end

inp = [2,10,13,15,45]
puts binary_search(inp, 15)   # print index if present
