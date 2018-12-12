require "prct06/individuo.rb"

class Antropometrico < Individuo
	
	#Modulo comparable
	include Comparable

	#Recibimos peso altura, edad, sexo, cintura, cadera
        attr_reader :peso, :altura, :edad, :sexo, :cintura, :cadera, :factor_actividad_fisica
        def initialize (peso, altura, edad, sexo, cintura, cadera, factor_actividad_fisica)
		@peso,@altura,@edad,@sexo, @cintura, @cadera, @factor_actividad_fisica = peso, altura, edad, sexo, cintura, cadera, factor_actividad_fisica 
        end

	#Metodo para calcular el IMC
        def imc
                @imc= @peso/(@altura*@altura) 
                @imc.round(4) 
        end

	#Metodo para calcular la grasa corporal
        def grasa
                @grasa = 1.2 * @imc + 0.23 * @edad -10.8 * @sexo -5.4 
                @grasa.round(1) 
        end

	#Metodo para calcular la relacion entre cadera y cintura
        def rcc
                @rcc =@cintura / @cadera 
                @rcc.round(1) 
        end

	#Metodo para modulo comparable
	def <=> (other)
		imc<=>other.imc
	end

	def gasto_energetico_total
                peso_teorico = (@altura-150)*0.75+50

                if(sexo==1)
                        gasto_energetico_basal = (10*@peso) + (6.25*@altura) - (5*@edad) + 5
                else
                        gasto_energetico_basal = (10*@peso) + (6.25*@altura) - (5*@edad) - 161
                end

                efecto_termogeno = gasto_energetico_basal * 0.1
                gasto_actividad_fisica = gasto_energetico_basal * factor_actividad_fisica
                @gasto_energetico_total = gasto_energetico_basal + efecto_termogeno + gasto_actividad_fisica
        end
end
