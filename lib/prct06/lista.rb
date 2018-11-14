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
			nodo.nest=NIL
                end

	end

	def insertar_por_cabeza(nodo)
		if(@head==NIL)
			@tail=nodo
			@head=nodo
		else
			nodo.nest=@head
			@head.prev=nodo
			@head=nodo
			nodo.prev=NIL
		end

	end

        def extraer_por_cabeza
		if(@head==NIL)
			puts "No hay nada que extraer (lista vacia)"
		else
			aux=@head
			@head=@head.nest
			aux.nest=NIL
			if(head!=NIL)
				@head.prev=NIL
			end
		end			

		return aux

        end

	def extraer_por_cola
		if(@tail==NIL)
			puts "No hay nada que extraer (lista vacia)"
		else
			aux=@tail
			@tail=@tail.prev
			aux.prev=NIL
			if(@tail!=NIL)
				@tail.nest=NIL
			end
		end
			
		return aux
	end

        def vacio
		if(@tail==NIL)
			return TRUE
		else
			return FALSE
		end
        end

	def to_s

		puntero=@head
		cadena='['
			if(@head!=NIL)
				while puntero!= NIL
					cadena+=puntero.value.to_s + ']'
					if(puntero.nest!=NIL)
						puntero=puntero.nest
						cadena+= '['
					else
						puntero=NIL
					end
				end
			end

		puts cadena
	end	
			

end
