# Taken from --
# https://stackoverflow.com/questions/1235863/how-to-test-if-a-string-is-basically-an-integer-in-quotes-using-ruby
def is_digit?(char)
  char.to_i.to_s == char
end

def get_1st_num_in(line)
  line.each_char do |char|
    if is_digit?(char)
      return char
    end
  end
end

def get_2nd_num_in(line)
  line.reverse.each_char do |char|
    if is_digit?(char)
      return char
    end
  end
end

sum = 0
# open file
# go line by line
File::readlines("input.txt").each do |line|
  # for each line, get first digit and get last digit
  a = get_1st_num_in(line)
  b = get_2nd_num_in(line)
  # append them together, convert to int
  result = Integer(a + b)
  # add to sum
  sum += result
end

puts "The sum is #{ sum }"
