# Ejercicio 5: Mixins.
# Transformar la clase Herviboro en un módulo. 
# Implementar el módulo en la clase Conejo mediante Mixin para poder acceder al método dieta desde la instancia. 
# Finalmente imprimir la definición de Hervíboro.

module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'

  def definir
    @@definir
  end

  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
   
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal

    extend Herviboro
    attr_accessor :name

  def initialize(name)
    @name = name
  end


end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts Conejo.dieta
puts Conejo.definir


# Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante Herencia de Herencia?