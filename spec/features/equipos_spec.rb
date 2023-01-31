require 'rails_helper'


describe new_equipo12_path, type: :feature do 
it "redireccionar al  equipo despues de crear un equipo"
visit "/equipo12/new"
fill_in "serie",	with: "SW001245" 
fill_in "marca",	with: "Dell" 
fill_in "modelo",	with: "AP460i- WR"
fill_in "serial",	with: "2235Y - 20199" 
fill_in "id_tipo", with: "1014"
fill_in "departamento",	with: "Ing.Sistemas" 
fill_in "id_area",	with: "Usuarios 1" 
fill_in "tipo",	with: "Switch" 
fill_in "estatus",	with: "Activo" 
fill_in "observaciones",	with: "Nada" 
fill_in "ram",	with: "64" 
fill_in "disco_duro",	with: "No" 

find("input[type='submit']").click
expect(page).to have_content ("Mi primer equipo")
end

#RAILS_ENV=test rake db:mrigate
#rspec
#rspec ./spec/features/equipos_spec.rb