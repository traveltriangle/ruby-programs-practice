def is_power_of_two(x)
    if x&(x-1)==0
        puts "power of two"
    else
        puts "not power of two"
    end
end
is_power_of_two(126)
is_power_of_two(1024)
