Node = Struct.new(:value, :nest, :prev)

class List

	attr_reader :head, :tail
	
	def initialize (head, tail)
		@head = head
		@tail = tail
	end

        def insertar_por_cola(nodo)
                if(@tail==NIL)
                        @tail=nodo
                        @head=nodo
                else
                        nodo.prev=@tail
                        @tail.nest=nodo
                        @tail=nodo
                end
        end

        def extraer_por_cabeza(nodo)
		if(@head==NIL)
			puts "No hay nada que extraer (lista vacia)"
		else
			nodo.nest.prev=NIL
			@head=nodo.nest
		end

		return nodo

        end

        def vacio
        end

end
