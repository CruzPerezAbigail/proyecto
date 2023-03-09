require "rails_helper"
RSpec.feature "Proceso de marcas", :type => :feature do
  before :each do
    Brand.create(:nombre => "pruebaconsola")
  end

  scenario "Agregar nueva marca" do
    visit "/brands/new"
    within("#new_brand") do
      fill_in "nombre", :with => 'pruebaconsola'
      
    end
    click_button "Guardar"
   
  end
end