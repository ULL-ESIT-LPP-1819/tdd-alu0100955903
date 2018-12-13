require 'prct06/lista'
require 'prct06/prct06'
require 'prct06/antro'


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

	end

	describe "Pruebas menu" do
		it "Prueba gasto energetico total" do
			expect(@a1.gasto_energetico_total).to eq(1742.0)
		end

		it "Compara individuos con un menu" do

			array_menu=[]
			array_menu << @e1
			array_menu << @e2
			array_menu << @e3
			array_menu << @e4
			array_menu << @e5

			individuos = []
			individuos << @a1
			individuos << @a2
			individuos << @a3
			individuos << @a4
			individuos << @a5

			sum = 0
			sum = array_menu.inject(0){|res,x| res + x.ener_kj}
			puts "Kj del menu: " + sum.to_s
			result = individuos.select do |x|
				puts "Gasto energetico: " + x.gasto_energetico_total.to_s
				sum >= x.gasto_energetico_total*0.9 && sum<= x.gasto_energetico_total*1.1
			end
			expect(result.size).to eq(2)

		end
	end

end

