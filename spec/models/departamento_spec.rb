require 'rails_helper'

RSpec.describe Departamento, type: :model do
       describe "validations" do 
        let(:departamento) {FactoryBot.build(:departamento)}
        it "should have a nombre" do 
          departamento.nombre= nil
          departamento.num_equipo= nil
          departamento.id_area= nil
          expect(departamento).to_not be_valid
        end 
      end 
    

end
