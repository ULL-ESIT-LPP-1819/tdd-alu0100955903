require 'prct06/prct06.rb'
require 'prct06/lista.rb'

RSpec.describe Prct06 do
        before :each do #Inicializamos los datos
		@nodo1 = Node.new(1,NIL,NIL)
		@nodo2 = Node.new(2,NIL,NIL)
		@nodo3 = Node.new(3,NIL,NIL)
		@lista = List.new(NIL,NIL)
        end
	
	describe "Pruebas de lista" do
		it "Inserta nodo por cola bien" do
			@lista.insertar_por_cola(@nodo1)
			expect(@lista.tail.value).to eq(1)
		end

		it "Extrae nodo por cabeza bien" do
			@lista.insertar_por_cola(@nodo1)
			@lista.insertar_por_cola(@nodo2)
			@lista.extraer_por_cabeza
			expect(@lista.head.value).to eq(2)
		end

		it "Inserta nodo por cabeza bien" do
			@lista.insertar_por_cabeza(@nodo1)
			expect(@lista.head.value).to eq(1)
		end

		it "Extrae nodo por cola bien" do
			@lista.insertar_por_cola(@nodo1)
			@lista.insertar_por_cola(@nodo2)
			@lista.extraer_por_cola
			expect(@lista.head.value).to eq(1)
		end

		it "Correcto: comprueba si está vacia" do
                        @lista.insertar_por_cola(@nodo2)
                        @lista.extraer_por_cola
			expect(@lista.vacio).to be(TRUE)
		end

		it "Correcto: se imprime bien" do
			expect(@lista.to_s)=="[1,2,3]"
		end
	end
end

