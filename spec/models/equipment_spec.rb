require 'rails_helper'

RSpec.describe Equipment, type: :model do
  describe "validations" do 
    let(:equipment) {FactoryBot.build(:equipment)}
    it "should have a nombre" do 
      equipment.estatus= nil
      equipment.modelo= nil
      equipment.serial= nil
      equipment.observciones= nil
      equipment.ram= nil
      equipment.disco_duro= nil
      equipment.fecharegistro= nil
      equipment.departament_id= nil
      equipment.zone_id= nil
      equipment.brand_id= nil
      equipment.shape_id= nil
      equipment.licence_id= nil
      expect(equipment).to_not be_valid
    end 
  end 
end
