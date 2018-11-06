#require "prct06/version"

#module Prct06
#  class Error < StandardError; end
  # Your code goes here...
#end

class Etiqueta

	attr_reader :grasa, :mono, :poli, :hidratos, :polialcoles, :almidon, :fibra, :proteinas, :sal

	def initialize(grasa,mono,poli,hidratos,polialcoles,almidon,fibra,proteinas,sal)
		@grasa, @mono, @poli, @hidratos, @polialcoles, @almidon, @fibra, @proteinas, @sal = grasa,mono,poli,hidratos,polialcoles,almidon,fibra,proteinas,sal
	end
end

