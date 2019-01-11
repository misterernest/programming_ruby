line = gets
puts "Scripting language mentioned: #{line}" if line =~ /Perl|Python/

line = gets
newline = line.sub(/Perl/, 'Ruby')

line = gets
newerline = newline.gsub(/Python/, 'Ruby')
