# bloques

def who_say_what
  yield('Dave', 'hello')
  yield('Andy', 'goodbye')
end

call_block { puts "In the block" }

# Start of method
# In the block
# In the block
# End of method

# iteraodres:

animals = %w( ant bee cat dog )
animals.each {|animal| puts animal }


[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|i| print i }
('a'..'e').each {|char| print char }


# cat dog horse *****3456abcde
