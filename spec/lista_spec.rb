require 'prct06/prct06.rb'
require 'prct06/lista.rb'

RSpec.describe List do
        before :each do #Inicializamos los datos
		@nodo1 = Node.new(1,NIL,NIL)
		@nodo2 = Node.new(2,NIL,NIL)
		@lista = List.new(head, tail)
        end
end

