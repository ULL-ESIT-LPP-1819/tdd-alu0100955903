require 'prct06/lista'
require 'prct06/prct06'
require 'prct06/antro'


RSpec.describe Prct06 do
	before :each do

		#peso, altura, edad, sexo, cintura, cadera, facor actividad fisica
		@a1 = Antropometrico.new(10,150,3,1,5,6,0.20)
		@a2 = Antropometrico.new(20,150,3,1,5,6,0.12)
		@a3 = Antropometrico.new(30,150,3,2,5,6,0.27)
		@a4 = Antropometrico.new(40,150,3,2,5,6,0.54)
		@a5 = Antropometrico.new(50,150,3,2,5,6,0.54)

		@e1 = Etiqueta.new("Lechuga",10,10,10,10,10,10,10,10,10)
		@e2 = Etiqueta.new("Pipas",20,20,20,20,20,20,20,20,20)
		@e3 = Etiqueta.new("Oreo",30,30,30,30,30,30,30,30,30)
		@e4 = Etiqueta.new("Pavo",40,40,40,40,40,40,40,40,40)
		@e5 = Etiqueta.new("Queso",50,50,50,50,50,50,50,50,50)

	end

	describe "Pruebas menu" do
		it "Prueba gasto energetico total" do
			expect(@a1.gasto_energetico_total).to eq(1335.75)
		end
	end

end

