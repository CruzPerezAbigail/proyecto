require 'rails_helper'

RSpec.describe Departament, type: :model do
  describe "validations" do 
    let(:departament) {FactoryBot.build(:departament)}
    it "should have a nombre" do 
      departament.nombre= nil
      departament.num_equipos= nil
      expect(departament).to_not be_valid
    end 
  end 
end
