#require "prct06/version"
#
#module Prct06
 # class Error < StandardError; end
  # Your code goes here...
#end
#
class Etiqueta

	attr_reader :nombre, :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoles, :almidon, :fibra, :proteinas, :sal #Recibimos los datos
	

	def initialize (nombre, saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal) #Inicializamos las variables con los valores
		@nombre, @saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoles, @almidon, @fibra, @proteinas, @sal = nombre, saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal
	end

	def grasas_totales #Calculamos el total de las grasas
		@grasas_totales = @saturadas + @monoinsaturadas + @polinsaturadas
		return @grasas_totales
	end

	def hidratos #Sumamos los hidratos
		@hidratos = @azucares + @polialcoles + @almidon
		return @hidratos
	end

	def ener_kj #Calculamos el valor energetico en kj
		@ener_kj = @saturadas * 37 + @monoinsaturadas * 37 + @polinsaturadas * 37 + @azucares * 17 + @polialcoles * 10 + @almidon * 17 + @fibra * 8 + @proteinas * 17 + @sal * 25
		return @ener_kj
	end	

	def ener_kcal #Calculamos el valor energetico en kcal
		@ener_kcal = @saturadas * 9 + @monoinsaturadas * 9 + @polinsaturadas * 9 + @azucares * 4 + @polialcoles * 2.4 + @almidon * 4 + @fibra * 2 + @proteinas * 4 + @sal * 6
		return @ener_kcal
	end
	
	def devolver_nombre #devolvemos el nombre
                return @nombre
        end

        def devolver_grasas_saturadas #devolvemos las grasas saturadas
                return @saturadas
        end

	def devolver_azucar #devolvemos el azucar
		return @azucares
	end

	def devolver_proteinas #devolvemos las proteinas
		return @proteinas
	end

	def devolver_sal #devolvemos la sal
		return @sal
	end

	def ir_energetico #calculamos el ir del valor energetico
		@ener_ir = ener_kj
		@ir_energetico = (@ener_ir/8400.to_f) * 100
		@ir_energetico.round(1)
	end

	def ir_grasa_total #calculamos el ir de las grasas
		@grasa_ir = grasas_totales
		@ir_grasa_total = (@grasa_ir/70.to_f) * 100
		@ir_grasa_total.round(1)
	end
	
	def ir_grasa_saturada #Calculamos el ir de las grasas saturadas
		@ir_grasa_saturada = (@saturadas/20.to_f)*100
		@ir_grasa_saturada.round(1)
	end

	def ir_hidratos #Calculamos el ir de los hidratos
		@hidratos_ir = hidratos
		@ir_hidratos = (@hidratos_ir/260.to_f)*100
		@ir_hidratos.round(1)
	end

	def ir_azucares #calculamos el ir de los azucares
		@ir_azucares = (@azucares/90.to_f)*100
		@ir_azucares.round(1)
	end

	def ir_proteina #Calculamos el ir de las proteinas
                @ir_proteina = (@proteinas/50.to_f)*100
                @ir_proteina.round(1)
        end

	def ir_sal #Calculamos el ir de la sal
		@ir_sal = (@sal/6.to_f)*100
		@ir_sal.round(1)
	end

end
