require 'rails_helper'


     RSpec.describe "Creating ", type: :feature do 
          scenario 'valid inputs' do 
               visit new_area_path
               fill_in 'nombre', with: 'area123'
               click_on 'Guardar'
               visit areas_path
               expect(page).to have_content('area123')
          end 

          scenario 'invalid inputs' do 
               visit new_area_path
               fill_in 'Nombre', with: ''
               click_on 'Guardar'
               expect(page).to have_content('Nombre no puede estar en blanco')
          end 
     end 
