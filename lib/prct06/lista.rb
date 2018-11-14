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


        end

        def vacio
        end

end
