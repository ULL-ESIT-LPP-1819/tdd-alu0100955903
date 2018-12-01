class Etiqueta

	#Modulo comparable
	include Comparable

	#Recibimos los datos
	attr_reader :nombre, :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoles, :almidon, :fibra, :proteinas, :sal 
	
	#Inicializamos las variables con los valores indicados en los test
	def initialize (nombre, saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal)
		@nombre, @saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoles, @almidon, @fibra, @proteinas, @sal = nombre, saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal
	end

	#Metodo para calcular las grasas totales
	def grasas_totales 
		@grasas_totales = @saturadas + @monoinsaturadas + @polinsaturadas
		return @grasas_totales
	end

	#Metodo para sumar los hidratos
	def hidratos 
		@hidratos = @azucares + @polialcoles + @almidon
		return @hidratos
	end

	#Metodo para calcular el valor energetico en kj
	def ener_kj 
		@ener_kj = @saturadas * 37 + @monoinsaturadas * 37 + @polinsaturadas * 37 + @azucares * 17 + @polialcoles * 10 + @almidon * 17 + @fibra * 8 + @proteinas * 17 + @sal * 25
		return @ener_kj
	end	

	#Metodo para calcular el valor energetico en kcal
	def ener_kcal 
		@ener_kcal = @saturadas * 9 + @monoinsaturadas * 9 + @polinsaturadas * 9 + @azucares * 4 + @polialcoles * 2.4 + @almidon * 4 + @fibra * 2 + @proteinas * 4 + @sal * 6
		return @ener_kcal
	end
	
	#Metodo para devolver el nombre
	def devolver_nombre 
                return @nombre
        end

	#Metodo para devolver las grasas saturadas
        def devolver_grasas_saturadas 
                return @saturadas
        end

	#Metodo para devolver el azucar
	def devolver_azucar 
		return @azucares
	end

	#Metodo para devolver las proteinas
	def devolver_proteinas
		return @proteinas
	end

	#Metodo para devolver la sal
	def devolver_sal 
		return @sal
	end

	#Metodo para calcular el indice de referencia del valor energetico en kj
	def ir_energetico 
		@ener_ir = ener_kj
		@ir_energetico = (@ener_ir/8400.to_f) * 100
		@ir_energetico.round(1)
	end

	#Metodo para calcular el indice de referencia de las grasas totales
	def ir_grasa_total 
		@grasa_ir = grasas_totales
		@ir_grasa_total = (@grasa_ir/70.to_f) * 100
		@ir_grasa_total.round(1)
	end
	
	#Metodo para calcular el indice de referencia de las grasas saturadas
	def ir_grasa_saturada 
		@ir_grasa_saturada = (@saturadas/20.to_f)*100
		@ir_grasa_saturada.round(1)
	end

	#Metodo para calcular el indice de referencia de los hidratos
	def ir_hidratos 
		@hidratos_ir = hidratos
		@ir_hidratos = (@hidratos_ir/260.to_f)*100
		@ir_hidratos.round(1)
	end

	#Metodo para calcular el indice de referencia de los azucares
	def ir_azucares 
		@ir_azucares = (@azucares/90.to_f)*100
		@ir_azucares.round(1)
	end

	#Metodo para calcular el indice de referencia de las proteinas
	def ir_proteina
                @ir_proteina = (@proteinas/50.to_f)*100
                @ir_proteina.round(1)
        end

	#Metodo para calcular el indice de referencia de la sal
	def ir_sal 
		@ir_sal = (@sal/6.to_f)*100
		@ir_sal.round(1)
	end
	
	#Metodo para el modulo Comparable
	def <=> (other)
		ener_kj <=> other.ener_kj
	end

end

