require 'rails_helper'

describe 'Shape' , type: :feature do 
         it "redirecciona al producto creado despues de crear un producto " do 
                  visit new_shape_path

                  fill_in 'shape_nombre', with: 'mI PRIMERA PRUEBA'
                  find("input[type='submit']").click
                  expect(page).to have_content('Mi primera prueba ')
         end 
end 
 
