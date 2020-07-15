arr = [1, 'abcd', 4.33, 'efgh']
puts arr[1]+" "+arr.last+" "+arr.first.to_s

puts arr.pop()    # remove last element and return the same
print arr; puts ''
arr.push('hijk') # add new element at last of array
print arr; puts ''
arr << 'lmno'  # alternative of push
print arr; puts ''

arr.each { |k| print k };puts ''; # array itertation

nums = [1,2,3,4];
print nums.map { |num| num**2 }; puts '';  #for applying similiar operation on each element in array

nums.delete_at(1) #index based deletion
print nums; puts '';
nums.delete(3); #occurence based deletion
print nums; puts '';

nums = [1,1,2,2,2,3,4,4]
print nums.uniq; puts ''; #remove duplicates and return new array as result
nums.uniq! #remove duplicates from array itself
print nums; puts '';

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print nums.select { |num| num > 4 } # return elements satisfying boolean condition
puts ''

num1 = [1,2,3,4]
num2 = [2,3,4,5]
puts num1 == num2
num2.pop()
num2.unshift(1) # work same as push but insert at start of array
puts num1 == num2

array_string = num1.to_s(); # to string method for array
puts array_string

puts num1.include?(3) # linear search of occurence in array

nums = [8, 1, 4, 5, 3]
print nums.sort; puts '' # sort array #non-mutating
