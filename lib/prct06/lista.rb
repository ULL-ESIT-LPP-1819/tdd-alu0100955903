Node = Struct.new(:value, :nest, :prev)

class List

	include Enumerable

	attr_reader :head, :tail
	
	def initialize (head, tail)
		@head = head
		@tail = tail
	end

        def insertar_por_cola(value)
		nodo=Node.new(value,nil,nil)
                if(@tail==nil)
                        @tail=nodo
                        @head=nodo
                else
                        nodo.prev=@tail
                        @tail.nest=nodo
                        @tail=nodo
			nodo.nest=nil
                end

	end

	def insertar_por_cabeza(value)
		nodo=Node.new(value,nil,nil)
		if(@head==nil)
			@tail=nodo
			@head=nodo
		else
			nodo.nest=@head
			@head.prev=nodo
			@head=nodo
			nodo.prev=nil
		end

	end

        def extraer_por_cabeza
		if(@head==nil)
			puts "No hay nada que extraer (lista vacia)"
		else
			aux=@head
			@head=@head.nest
			if(head!=nil)
				@head.prev=nil
			end
			aux.nest=nil
			if(@head==nil)
				@tail=nil
			end
		end			

		return aux

        end

	def extraer_por_cola
		if(@tail==nil)
			puts "No hay nada que extraer (lista vacia)"
		else
			aux=@tail
			@tail=@tail.prev
			aux.prev=nil
			if(@tail!=nil)
				@tail.nest=nil
			end
		end
			
		return aux
	end

        def vacio
		if(@tail==nil)
			return true
		else
			return false
		end
        end

	def to_s

		puntero=@head
		cadena='['
			if(@head!=nil)
				while puntero!= nil
					cadena+=puntero.value.to_s + ']'
					if(puntero.nest!=nil)
						puntero=puntero.nest
						cadena+= '['
					else
						puntero=nil
					end
				end
			end

	end


	#def each(&block)
    	#	block.call(@head)
    	#	@tail.each(&block) if @tail
  	#end

	#def each(&block)
    	#	if block_given?
    	# 		block.call(@head)
      	#		@tail.each(&block) if @tail
    	#	else
      	#		to_enum(:each)
    	#	end
  	#end

	def min
		if(@head != nil)
			@aux=@head
			@min=@head

			while(@aux.nest!=nil)
				@aux = @aux.nest
				if(@aux.value<@min.value)
					@min = @aux
				end
			end

			return @min.value
		else
			return nil
		end

	end

			

end
