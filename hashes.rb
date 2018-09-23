my_hash = { "first_name" => "Jack", "age" => 23, "last_name" => "Lanciloti"}

#my_hash.each { |key, value| puts value; puts key }

#my_hash.each do |key, value|
 # puts value
#end

puts my_hash.select { |key, value| value.to_s.include?("a") }
#puts my_hash.reject { |key, value| value.to_s.include?("a") }

#:hello_world

#my_hash = { first_name: "Jack", age: 23, last_name: "Lanciloti" }
#puts my_hash[:first_name]
#puts my_hash[:age]