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
		return @grasas_totales
	end

	def hidratos
		@hidratos = @azucares + @polialcoles + @almidon
	end

	def ener_kj
		@ener_kj = @saturadas * 37 + @monoinsaturadas * 37 + @polinsaturadas * 37 + @azucares * 17 + @polialcoles * 10 + @almidon * 17 + @fibra * 8 + @proteinas * 17 + @sal * 25
		return @ener_kj
	end	

	def ener_kcal
		@ener_kcal = @saturadas * 9 + @monoinsaturadas * 9 + @polinsaturadas * 9 + @azucares * 4 + @polialcoles * 2.4 + @almidon * 4 + @fibra * 2 + @proteinas * 4 + @sal * 6
	end
	
	def devolver_nombre
                return @nombre
        end

        def devolver_grasas_saturadas
                return @saturadas
        end

	def devolver_azucar
		return @azucares
	end

	def devolver_proteinas
		return @proteinas
	end

	def devolver_sal
		return @sal
	end

	def ir_energetico
		@ener_ir = ener_kj
		@ir_energetico = (@ener_ir/8400.to_f) * 100
		@ir_energetico.round(1)
	end

	def ir_grasa_total
		@grasa_ir = grasas_totales
		@ir_grasa_total = (@grasa_ir/70.to_f) * 100
		@ir_grasa_total.round(1)
	end


end
