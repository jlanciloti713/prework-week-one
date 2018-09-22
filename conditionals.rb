def enter_number
  puts "Please enter a 1 or 2"
  number = gets.chomp.to_i


  if number == 2 || number == 1
    puts "Thank you for entering a #{number.to_s}"
  else
    puts "I SAID 1 OR 2!!"
  end
end