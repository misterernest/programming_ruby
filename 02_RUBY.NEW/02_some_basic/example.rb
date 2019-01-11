# Description of #say_goodnight1
#
# @param name [String] Recieve a string.
# @return [String] Built string
def say_goodnight1(name)
  result = "1. Good night, #{name}"
end

# Description of #say_goodnight2
#
# @param name [String] variable to construct String
# @return [String] Built string
def say_goodnight2(name)
  result = '2. Good night, ' + name
end

# Description of #say_goodnight3
#
# @param name [String] variable to construct String
# @return [String] Built string
def say_goodnight3(name)
  "3. Good night, #{name}"
end

# Description of #say_goodnight4
#
# @param name [String] variable to construct String
# @return [String] Built string
def say_goodnight4 name
  "4. Good night, #{name}"
end

puts say_goodnight1 "PHP"
puts say_goodnight2 "PHP"
puts say_goodnight3 "PHP"
puts say_goodnight4 "PHP"
