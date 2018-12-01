class Individuo
	
	#Recibimos dni y nombre	
	attr_reader :dni, :nombre

	#Inicializamos el individuo con nombre y dni
	def initialize (dni, nombre)
		@dni, @nombre = dni, nombre
	end
end
