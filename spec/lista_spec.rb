require 'prct06/prct06.rb'
require 'prct06/lista.rb'

RSpec.describe Prct06 do
        before :each do #Inicializamos los datos
		@nodo1 = Node.new(1,nil,nil)
		@nodo2 = Node.new(2,nil,nil)

                @etiqueta1 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,1)
                @etiqueta2 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,2)
                @etiqueta3 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,3)
                @etiqueta4 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,4)
                @etiqueta5 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,5)
                @etiqueta6 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,7)
                @etiqueta7 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,8)
                @etiqueta8 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,9)
                @etiqueta9 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,10)
                @etiqueta10 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,11)

		@nodo3 = Node.new(@etiqueta1,nil,nil)
                @nodo4 = Node.new(@etiqueta2,nil,nil)
                @nodo5 = Node.new(@etiqueta3,nil,nil)
                @nodo6 = Node.new(@etiqueta4,nil,nil)
                @nodo7 = Node.new(@etiqueta5,nil,nil)
                @nodo8 = Node.new(@etiqueta6,nil,nil)
                @nodo9 = Node.new(@etiqueta7,nil,nil)
                @nodo10 = Node.new(@etiqueta8,nil,nil)
                @nodo11 = Node.new(@etiqueta9,nil,nil)
                @nodo12 = Node.new(@etiqueta10,nil,nil)

		@lista = List.new(nil,nil)
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
			expect(@lista.vacio).to be(true)
		end

		it "Correcto: se imprime bien" do
                        @lista.insertar_por_cola(@nodo1)
                        @lista.insertar_por_cola(@nodo2)
			@lista.insertar_por_cola(@nodo3)
			expect(@lista.to_s)=="[1][2][3]"
		end

		it "Correcto: vectores" do
			vector1 = []
			vector2 = []

			@lista.insertar_por_cola(@nodo3)
                        @lista.insertar_por_cola(@nodo4)
                        @lista.insertar_por_cola(@nodo5)
                        @lista.insertar_por_cola(@nodo6)
                        @lista.insertar_por_cola(@nodo7)
                        @lista.insertar_por_cola(@nodo8)
                        @lista.insertar_por_cola(@nodo9)
                        @lista.insertar_por_cola(@nodo10)
                        @lista.insertar_por_cola(@nodo11)
                        @lista.insertar_por_cola(@nodo12)

			while !@lista.vacio do
				puntero=@lista.extraer_por_cabeza
				if(puntero.value.sal<6)
					vector1 << puntero.value
				else
					vector2 << puntero.value
				end
			end
					
			expect(vector1.length).to eq(5)
			expect(vector2.length).to eq(5)
		end
	end
end

