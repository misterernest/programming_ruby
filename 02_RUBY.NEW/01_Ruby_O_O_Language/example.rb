# Description of Perro
class Perro
  # Description of #initialize
  #
  # @param raza [String] para indicar tipo de raza del perro
  # @param nombre [String] Nombre que el amo le da al perro
  # @return [void]
  def initialize(raza, nombre)
    @raza = raza
    @nombre = nombre
  end

  # Description of #ladrar
  #
  # @return [void] Imprime en consola
  def ladrar
    puts 'Guau! Guau!'
  end

  # Description of #saludar
  #
  # @return [Void] imprime en pantalla
  def saludar
    puts "Soy un perro de la raza #{@raza} y mi nombre es #{@nombre}"
  end
end

d = Perro.new('Labrador', 'Benzy')
puts d.methods.sort # muestra todos sus metodos disponibles en forma ordenada
puts "La id del ojbeto es #{d.object_id}." # muestra el id unico del objeto
puts "Esto fue un ejemplo de instancia"
