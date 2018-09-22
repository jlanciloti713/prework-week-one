def is_palindrome?(string)
  if string.downcase.split.join("") == string.downcase.split.join("").reverse
    return true
  else
    return false
  end
end

puts is_palindrome?("racecar")
puts is_palindrome?("Never odd or even")
puts is_palindrome?("Hello world")