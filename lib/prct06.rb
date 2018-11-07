#require "prct06/version"
#
#module Prct06
 # class Error < StandardError; end
  # Your code goes here...
#end
#
class Etiqueta

	attr_reader :saturadas, :monoinsaturadas, :polinsaturadas, :azucares, :polialcoles, :almidon, :fibra, :proteinas, :sal
	

	def initialize (saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal)
		@saturadas, @monoinsaturadas, @polinsaturadas, @azucares, @polialcoles, @almidon, @fibra, @proteinas, @sal = saturadas, monoinsaturadas, polinsaturadas, azucares, polialcoles, almidon, fibra, proteinas, sal
	end
end
