require "prct06/individuo.rb"

class Antropometrico < Individuo
        attr_reader :peso, :altura, :edad, :sexo, :cintura, :cadera
        def initialize (peso, altura, edad, sexo, cintura, cadera)
                @peso,@altura,@edad,@sexo, @cintura, @cadera = peso, altura, edad, sexo, cintura, cadera #asignamos a las variables de instancia los valores de inicio que le pasamos desde el test
        end

        def imc
                @imc= @peso/(@altura*@altura) #calculamos el imc
                @imc.round(1) #especificamos que solo queremos un decimal
        end

        def grasa
                @grasa = 1.2 * @imc + 0.23 * @edad -10.8 * @sexo -5.4 #calculamos el %grasa
                @grasa.round(1) #especificamos que solo queremos un decimal
        end

        def rcc
                @rcc =@cintura / @cadera #calculamos el rcc
                @rcc.round(1) #especificamos que solo queremos un decimal
        end
end
