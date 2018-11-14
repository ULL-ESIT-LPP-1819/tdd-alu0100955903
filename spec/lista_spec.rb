require 'prct06/prct06.rb'
require 'prct06/lista.rb'

RSpec.describe Prct06 do
        before :each do #Inicializamos los datos
		@nodo1 = Node.new(1,NIL,NIL)
		@nodo2 = Node.new(2,NIL,NIL)
		@lista = List.new(NIL, NIL)
        end
	
	describe "Pruebas de lista" do
		it "Inserta nodo bien" do
			@lista.insertar_por_cola(@nodo1)
			expect(@lista.tail.value).to eq(1)
		end

		it "Extrae nodo bien" do
			@lista.insertar_por_cola(@nodo1)
			@lista.insertar_por_cola(@nodo2)
			@lista.extraer_por_cabeza(@nodo1)
			expect(@lista.head.value).to eq(2)
		end
	end
end

