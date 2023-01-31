require 'rails_helper'

   RSpec.describe 'Creating in insumo', :type => :feature do 
         
                  scenario "should be successful" do 
                  visit new_insumo_path
                  
                  fill_in 'nombre', with: 'alcohol'
                  fill_in 'caracteristicas', with: 'para limpiar pantalla'
                  fill_in 'existencia', with: '2'
                  fill_in 'estatus', with: 'Guardado'
                  
                  click_button 'Guardar'
                  visit insumo_path
                  expect(page).to have_content("alcohol")
         
         end 


end 