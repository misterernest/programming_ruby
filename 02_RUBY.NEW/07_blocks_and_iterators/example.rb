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

animals = %w[ant bee cat dog]
animals.each { |valor| puts valor }

%w[cat dog horse].each { |name| print name, ' ' }
5.times { print '*' }
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }


# cat dog horse *****3456abcde


# Prueba estos en tu consola irb

['H','A','L'].map {|x| x.succ}
['H','A','L'].collect {|x| x.succ}


[1, 3, 5, 7].inject(0) { |sum, element| sum + element }
[1, 3, 5, 7].inject(1) { |operacion, element| operacion * element }
