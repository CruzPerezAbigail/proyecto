require 'rails_helper'

RSpec.describe Brand, type: :model do
  describe "validations" do 
    let(:brand) {FactoryBot.build(:brand)}
    it "should have a nombre" do 
      brand.nombre= nil
      expect(brand).to_not be_valid
    end 
  end 
end
