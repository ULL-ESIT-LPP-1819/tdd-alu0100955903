require 'prct06/lista'
require 'prct06/prct06'
#require 'prct06/persona'

RSpec.describe Prct06 do
        before :each do
                @l1 = List.new(nil,nil)
		@e1 =Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,10)
        end

        describe "Pruebas de lista" do

		it "La clase lista existe" do
			expect(@l1.class).to eq(List)
		end

		it "Es una instancia de la clase lista" do
			expect(@l1.instance_of? List).to eq(true)
		end

		it "Es un objeto de la clase lista" do
			expect(@l1.is_a? List).to eq(true)
		end
	end

	describe "Pruebas de Etiqueta" do

                it "La clase etiqueta existe" do
                        expect(@e1.class).to eq(Etiqueta)
                end

                it "Es una instancia de la clase etiqueta" do
                        expect(@e1.instance_of? Etiqueta).to eq(true)
                end

                it "Es un objeto de la clase etiqueta" do
                        expect(@e1.is_a? Etiqueta).to eq(true)
                end
        end
end

