#require "prct06/version"
#
#module Prct06
 # class Error < StandardError; end
  # Your code goes here...
#end
#
class Etiqueta

	attr_reader :nombre, :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoles, :almidon, :fibra, :proteinas, :sal
	

	def initialize (nombre, saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal)
		@nombre, @saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoles, @almidon, @fibra, @proteinas, @sal = nombre, saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal
	end

	def grasas_totales
		@grasas_totales = @saturadas + @monoinsaturadas + @polinsaturadas
	end

	def hidratos
		@hidratos = @azucares + @polialcoles + @almidon
	end
end
