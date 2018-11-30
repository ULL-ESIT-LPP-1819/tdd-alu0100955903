require 'prct06/lista'
require 'prct06/prct06'
require 'prct06/antro'

RSpec.describe Prct06 do
        before :each do
                @l1 = List.new(nil,nil)
	
		@la = List.new(nil,nil)
		@a1 = Antropometrico.new(10,150,3,4,5,6)
		@a2 = Antropometrico.new(20,150,3,4,5,6)
		@a3 = Antropometrico.new(30,150,3,4,5,6)
		@a4 = Antropometrico.new(45,150,3,4,5,6)
		@a5 = Antropometrico.new(50,150,3,4,5,6)

		@le = List.new(nil,nil)
                @e1 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,10)
                @e2 = Etiqueta.new("Pipas",20,20,20,20,20,20,20,20,20)
                @e3 = Etiqueta.new("Oreo",30,30,30,30,30,30,30,30,30)

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

	describe "Pruebas comparable Etiqueta" do
		
		it "Prueba  '<' para etiquetas" do
			expect(@e1<@e2).to eq(true)
		end

		it "Prueba  '>' para etiquetas" do
			expect(@e1>@e2).to eq(false)
		end

		it "Prueba '<=' para etiquetas" do
			expect(@e1<=@e2).to eq(true)
		end

		it "Prueba '>=' para etiquetas" do
			expect(@e1>=@e2).to eq(false)
		end

		it "Prueba between para etiquetas" do
			expect(@e2.between?(@e1,@e3)).to eq(true)
		end
	end

	describe "Pruebas comparable Individuo" do

		it "Prueba  '<' para individuos" do
			expect(@a1<@a2).to eq(false)
		end
		
		it "Prueba  '>' para individuos" do
			expect(@a1>@a2).to eq(false)
		end

		it "Prueba '<=' para individuos" do
			expect(@a1<=@a2).to eq(true)
		end

		it "Prueba '>=' para individuos" do
			expect(@a1>=@a2).to eq(true)
		end

		it "Prueba between para individuo" do
			expect(@a2.between?(@a1,@a3)).to eq(true)
		end
	end

	describe "Pruebas enumerable Lista [Etiqueta]" do

		it "Pruebas lista de etiquetas" do
		
			@le.insertar_por_cabeza(@e1)
			@le.insertar_por_cabeza(@e2)
		        @le.insertar_por_cabeza(@e3)
		 	
			expect(@le.min).to eq(@e1)
			expect(@le.max).to eq(@e3)
			expect(@le.sort).to eq([@e1,@e2,@e3])
			expect(@le.select{|i| i.nombre == "Galletas"}).to eq([@e1])
			expect(@le.collect{|i| @e1}).to eq([@e1,@e1,@e1])

		end
	end

	describe "Pruebas enumerable Lista [Antropometrico]" do

		it "Pruebas lista de antropometrico" do
			
			@la.insertar_por_cabeza(@a1)
			@la.insertar_por_cabeza(@a2)
			@la.insertar_por_cabeza(@a3)

			expect(@la.min).to eq(@a1)
			expect(@la.max).to eq(@a3)
		end
	end	
end
