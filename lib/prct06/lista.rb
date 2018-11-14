Node = Struct.new(:value, :nest, :prev)

class List

	attr_reader :head, :tail
	
	def initialize (head, tail)
		@head = head
		@tail = tail
	end

end
