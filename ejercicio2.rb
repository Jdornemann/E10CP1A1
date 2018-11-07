# Ejercicio 2: Sintaxis
# Corregir los errores de sintaxis para que las últimas cuatro líneas se ejecuten de manera correcta

# La última instrucción debe imprimir "Hola! Soy la clase MiClase"

class MiClase
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def self.saludar
         
        "Hola! Soy la clase #{self.name}"
    end
end

c = MiClase.new('MiClase')

puts MiClase.saludar 


#Conclusión: Un metodo de clase no puede llamar a una variable de instancia
