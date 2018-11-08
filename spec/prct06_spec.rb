
RSpec.describe Etiqueta do
	before :each do
		@etiqueta1 = Etiqueta.new("Galletas",10,10,10,10,10,10,10,10,10)
	end

	describe "# Etiqueta" do
		it "Almacenamiento correcto: nombre" do
			expect(@etiqueta1.nombre) == "Galletas"
		end

    		it "Almacenamiento correcto: grasas saturadas" do
      			expect(@etiqueta1.saturadas).to eq(10)
   	 	end

		it "Almacenamiento correcto: grasas monoinsaturadas" do
			expect(@etiqueta1.monoinsaturadas).to eq(10)
		end

		it "Almacenamiento correcto: grasas polinsaturadas" do
			expect(@etiqueta1.polinsaturadas).to eq(10)
		end

		it "Almacenamiento correcto: azucares" do
			expect(@etiqueta1.azucares).to eq(10)
		end

		it "Almacenamiento correcto: polialcoles" do
			expect(@etiqueta1.polialcoles).to eq(10)
		end

		it "Almacenamiento correcto: almidon" do
			expect(@etiqueta1.almidon).to eq(10)
		end

		it "Almacenamiento correcto: fibra" do
			expect(@etiqueta1.fibra).to eq(10)
		end

		it "Almacenamiento correcto: proteinas" do
			expect(@etiqueta1.proteinas).to eq(10)
		end

		it "Almacenamiento correcto: sal" do
			expect(@etiqueta1.sal).to eq(10)
		end

		it "Valor correcto: Grasas totales" do
			expect(@etiqueta1.grasas_totales).to eq(30)
		end

		it "Valor correcto: Hidratos de carbono" do
			expect(@etiqueta1.hidratos).to eq(30)
		end

		it "Valor energetico correcto (kj)" do
			expect(@etiqueta1.ener_kj).to eq(2050)
		end

		it "valor energetico correcto (kcal)" do
			expect(@etiqueta1.ener_kcal).to eq(494)
		end

		it "Correcto: Devuelve el nombre" do
			expect(@etiqueta1.devolver_nombre) =="Galletas"
		end

		it "Correcto: Devuelve cantidad de grasas saturadas" do
			expect(@etiqueta1.devolver_grasas_saturadas). to eq(10)
		end
		
		it "Correcto: Devuelve cantidad de azucares" do
			expect(@etiqueta1.devolver_azucar).to eq(10)
		end

		it "Correcto: Devuelve cantidad de proteinas" do
			expect(@etiqueta1.devolver_proteinas).to eq(10)
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


