# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  input_range = range.split(//)
  a = input_range.first
  b = input_range.last
  comp_range = (a..b).to_a
  output_range = []
  comp_range.each do |letter|
    if !input_range.include?(letter)
      output_range << letter
    end
  end
    if output_range.size != 0
      missing_letters = output_range.join()
    else
      output_range = nil
    end
end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
