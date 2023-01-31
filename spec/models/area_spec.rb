require 'rails_helper'

RSpec.describe Area, type: :model do
      describe "validations" do 
        let(:area) {FactoryBot.build(:area)}
        it "should have a nombre" do 
          area.nombre= nil
          expect(area).to_not be_valid
        end 
      end 
    end

      
  
