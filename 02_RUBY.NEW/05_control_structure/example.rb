point = 100
if point > 0 and point < 10
  puts '¡Muy poco puntaje, sigue entrenando!'
elsif point >= 10 and point < 20
  puts '¡Todavia puedes lograr mas!'
else
  puts "¡Eres un barbaro, ya tienes #{point} puntos!"
end

today = Time.now
if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

if point > 20
  puts "¡Eres un barbaro, ya tienes #{point} puntos!"
end

puts "¡Eres un barbaro, ya tienes #{point} puntos!" if point > 20


point = 0
while point <= 20
  puts point = point + 1
end

point = 0
puts point = point + 1 while point <= 20
