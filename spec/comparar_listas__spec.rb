require 'prct06/lista.rb'
require 'prct06/prct06'
require 'prct06/antro'
require 'prct06/array.rb'

RSpec.describe Prct06 do
        before :each do

                #peso, altura, edad, sexo, cintura, cadera, facor actividad fisica
		
		@a1 = Antropometrico.new(10,200,3,1,5,6,0.20)
                @a2 = Antropometrico.new(20,200,3,1,5,6,0.12)
                @a3 = Antropometrico.new(30,200,3,2,5,6,0.27)
                @a4 = Antropometrico.new(80,200,3,2,5,6,0.54)
                @a5 = Antropometrico.new(90,200,3,2,5,6,0.54)

                @e1 = Etiqueta.new("Lechuga",1,1,1,1,1,1,1,1,1)
                @e2 = Etiqueta.new("Pipas",2,2,2,2,2,2,2,2,2)
                @e3 = Etiqueta.new("Oreo",3,3,3,3,3,3,3,3,3)
                @e4 = Etiqueta.new("Pavo",4,4,4,4,4,4,4,4,4)
                @e5 = Etiqueta.new("Queso",5,5,5,5,5,5,5,5,5)

                @array_menu=[]
                @array_menu << @e1
                @array_menu << @e4
                @array_menu << @e3
                @array_menu << @e2
		@array_menu << @e5

		@lista = List.new(nil,nil)
	        @lista.insertar_por_cola(@a1)
                @lista.insertar_por_cola(@a2)
                @lista.insertar_por_cola(@a3)
                @lista.insertar_por_cola(@a4)
                @lista.insertar_por_cola(@a5)

	end

        describe "Pruebas ordenacion de arrays" do

                it "Ordena arrays de menu con bucle for" do

			expect(@array_menu.ordenar_for).to eq([@e1,@e2,@e3,@e4,@e5])
		end

		it "Ordena arrays de menu con bucle each" do

			expect(@array_menu.ordenar_each).to eq([@e1,@e2,@e3,@e4,@e5])
		end

		it "Ordena arrays de menu con bucle sort" do
			expect(@array_menu.sort).to eq([@e1,@e2,@e3,@e4,@e5])
		end
			
	end

	describe "Pruebas ordenacion de listas" do
		
		it "Ordena lista de individuos con bucle for" do

			expect(@lista.ordenacion_for).to eq([@a1,@a2,@a3,@a4,@a5])
		end

		it "Ordena lista de individuos con bucle each" do

			expect(@lista.ordenacion_each).to eq([@a1,@a2,@a3,@a4,@a5])
		end

		it "Ordena lista de individuos con bucle sort" do
			expect(@lista.sort).to eq([@a1,@a2,@a3,@a4,@a5])
		end
	end
end


