require 'prct06.rb'


RSpec.describe Etiqueta do


	before :each do
		@etiqueta1 = Etiqueta.new(10,20,30,40,50,60,70,80,90)
	end

	describe "#almacenamiento de datos" do
		it "Se almacena correctamente la grasa" do
			@etiqueta1.expect(grasa).to_be eq(10)
		end


                it "Se almacena correctamente las monoinsaturadas" do
                        expect(@etiqueta1.mono).to_be eq(20)
                end

                it "Se almacena correctamente las polinsaturadas" do
                        expect(@etiqueta1.poli).to_be eq(30)
                end

                it "Se almacena correctamente los hidratos de carbono" do
                        expect(@etiqueta1.hidratos).to_be eq(40)
                end

                it "Se almacena correctamente los polialcoles" do
                        expect(@etiqueta1.polialcoles).to_be eq(50)
                end

                it "Se almacena correctamente el almidon" do
                        expect(@etiqueta1.almidon).to_be eq(60)
                end

                it "Se almacena correctamente la fibra alimentaria" do
                        expect(@etiqueta1.fibra).to_be eq(70)
                end

                it "Se almacena correctamente la proteinas" do
                        expect(@etiqueta1.proteinas).to_be eq(80)
                end

                it "Se almacena correctamente la sal" do
			expect(@etiqueta1.sal).to_be eq(90)
                end
	end
end	

#RSpec.describe Prct06 do
#  it "has a version number" do
#    expect(Prct06::VERSION).not_to be nil
#  end

#  it "does something useful" do
#    expect(false).to eq(true)
#  end
#end


