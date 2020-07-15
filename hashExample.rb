person = {name: 'abc', height: '6', weight: '60', hair: 'black'} #simple hash

person.each do |key, value|    # itearting over hash
  puts "Person #{key} is #{value}"
end

name_age_hash = { "abc" => 42, "efg" => 31, "hij" => 19}
puts name_age_hash.has_key?("efg") # return boolean key is present or not

puts name_age_hash.select { |k,v| k == "abc" } #return key-value satisfying condition

puts name_age_hash.fetch("hij") # get value from key
puts name_age_hash.fetch("xyz", "xyz isn't in this hash") # get value from key with default fallback

print name_age_hash.to_a; puts ''; # return array fromat of hash
print name_age_hash.keys; puts ''; # return array of keys
print name_age_hash.values; puts ''; # return array of values
