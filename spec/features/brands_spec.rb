require "rails_helper"
require "application_system_test_case"
class BrandsTest < ApplicationSystemTestCase
# RSpec.feature "Proceso de marcas", :type => :feature do
#   before :each do
#     Brand.create(:nombre => "pruebaconsola")
#   end
# end 
test "should the new brand" do 
  visit brand_new_path
  fill_in "nombre_brand", :with => 'pruebaconsola'


end
#  scenario "Agregar nueva marca" do
#   visit "/brands/new"
    
#       fill_in "nombre_brand", :with => 'pruebaconsola'
      
  
#     click_button "Guardar"
   
#   end
end