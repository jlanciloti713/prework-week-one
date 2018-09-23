def increment(number, number_of_iterations)
  number_of_iterations.times do
    puts number
    number += 1
  end
end

increment(42, 10000)
