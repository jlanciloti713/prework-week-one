a = *(1..100)
a.each do |value|
    if value % 3 == 0 && value % 5 == 0
      puts "Fizzbuzz"
    elsif value % 3 == 0
      puts "Fizz"
    elsif value % 5 == 0
      puts "Buzz"
    else
      puts value
    end
end