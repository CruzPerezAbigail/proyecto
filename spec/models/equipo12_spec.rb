require 'rails_helper'

RSpec.describe Equipo12, type: :model do
          describe "validations" do 
            let(:equipo12) {FactoryBot.build(:equipo12)}
            it "should have valores" do 
              equipo12.tipo= 1
              equipo12.modelo= nil
              equipo12.serial= nil
              equipo12.observaciones= nil 
              equipo12.ram= nil
              equipo12.disco_duro= nil
              expect(equipo12).to_not be_valid
            end 
          end 
end
