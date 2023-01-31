require 'rails_helper'

RSpec.describe Insumo, type: :model do
        describe "validaciones" do 
          let(:insumo) {FactoryBot.build(:insumo)}
          it "should have in valores" do 
            insumo.nombre = nil
            insumo.caracteristicas= nil
            insumo.existencia= nil
            insumo.estatus= nil
            expect(insumo).to_not be_valid
          end 
        end 
end
