a = []
a.class
a.methods
puts a
a.inspect
a = [1, 'cat', 1.5, true]
a.inspect
puts "El array esta compuesto por #{a.inspect}"
puts a[2]
puts "El primero elemento es #{a[0]}, mientras que el ulitmo es #{a[-1]}"
b = %w{carro bicicleta camion motocilceta avion}
b.inspect

inst_section = {
  'cello'     => 'string',
  'clarinet'  => 'woodwind',
  'drum'      => 'percussion',
  'oboe'      => 'woodwind',
  'trumpet'   => 'brass',
  'violin'    => 'sting'
}
