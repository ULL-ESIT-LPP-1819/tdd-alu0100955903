require "prct06/individuo.rb"

class Antropometrico < Individuo
        attr_reader :peso, :altura
        def initialize (peso, altura)
                peso,@altura = peso, altura #asignamos a las variables de instancia los valores de inicio que le pasamos desde el test
        end

        def imc
		@imc= @peso.to_f/(@altura*@altura) #calculamos el imc
                @imc.round(1) #especificamos que solo queremos un decimal
        end

end
