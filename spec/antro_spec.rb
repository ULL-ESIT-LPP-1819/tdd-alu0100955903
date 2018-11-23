require 'prct06/lista'
require 'prct06/prct06'
require 'prct06/antro'

RSpec.describe Prct06 do
        before :each do
                @l1 = List.new(nil,nil)
		@e1 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,10)
	
		@a1 = Antropometrico.new(50,180)
		@a2 = Antropometrico.new(50,150)
		@a3 = Antropometrico.new(40,160)
		@a4 = Antropometrico.new(35,150)
		@a5 = Antropometrico.new(60,150)
        end

        describe "Pruebas de lista" do

		it "@l1 pertenece a la clase lista" do
			expect(@l1.class).to eq(List)
		end

		it "@l1 es una instancia de la clase lista" do
			expect(@l1.instance_of? List).to eq(true)
		end

		it "@l1 es un objeto de la clase lista" do
			expect(@l1.is_a? List).to eq(true)
		end
	end

	describe "Pruebas de Etiqueta" do

                it "@e1 pertenece a la clase etiqueta" do
                        expect(@e1.class).to eq(Etiqueta)
                end

                it "@e1 es una instancia de la clase etiqueta" do
                        expect(@e1.instance_of? Etiqueta).to eq(true)
                end

                it "@e1 es un objeto de la clase etiqueta" do
                        expect(@e1.is_a? Etiqueta).to eq(true)
                end
        end

	describe "Pruebas de Antropometrico" do
		
		it "@a1 pertenece a la clase antropometrico" do
			expect(@a1.class).to eq(Antropometrico)
		end
		
		it "@a1 es una instancia de la clase antropometrico" do
			expect(@a1.instance_of? Antropometrico).to eq(true)
		end

		it "@a1 es un objeto de la clase antropometrico" do
			expect(@a1.is_a? Antropometrico).to eq(true)
		end
	end

	describe "Pruebas lista antropometrico" do
		it "Inserta los nodos bien" do
			@l1.insertar_por_cabeza(@a1)
			@l1.insertar_por_cabeza(@a2)
			@l1.insertar_por_cabeza(@a3)
			@l1.insertar_por_cabeza(@a4)
			@l1.insertar_por_cabeza(@a5)
			
			aux = @l1.extraer_por_cabeza()
			expect(aux.value.imc).to be<(25)
			
			aux = @l1.extraer_por_cabeza()
			expect(aux.value.imc).to be<(25)

			aux = @l1.extraer_por_cabeza()
			expect(aux.value.imc).to be<(25)

                        aux = @l1.extraer_por_cabeza()
			expect(aux.value.imc).to be<(25)

			aux = @l1.extraer_por_cabeza()
			expect(aux.value.imc).to be<(25)
		end
	end
end
