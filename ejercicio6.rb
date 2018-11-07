require 'faker'

module Test 
    def result 

        prom = (nota1+nota2) / 2

        prom > 4 ? "Estudiante aprobado" : "Estudiante REprobrando"
    end
end

module Attendance

    def student_quantity
        quantity

    end
end


class Student
   
    attr_accessor  :nombre, :nota1 ,:nota2
    include Test
    extend Attendance
    @@quantity = 0
   

    def initialize(nombre,nota1=4,nota2=4)

        @nombre = nombre
        @nota1 = nota1
        @nota2 = nota2
        @@quantity += 1 
    end

    def self.quantity
        @@quantity 
    end
  
end


10.times do |x|
    r = Random.new
    student = Student.new(Faker::Simpsons.character, r.rand(1..7),r.rand(1..7))
    puts student.nombre 
    puts student.nota1 
    puts student.nota2
    puts student.result
end

puts "NUmero de instancias : #{Student.student_quantity} "


