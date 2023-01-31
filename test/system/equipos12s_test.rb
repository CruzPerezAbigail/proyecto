require "application_system_test_case"

class Equipos12sTest < ApplicationSystemTestCase
  setup do
    @equipos12 = equipos12s(:one)
  end

  test "visiting the index" do
    visit equipos12s_url
    assert_selector "h1", text: "Equipos12s"
  end

  test "should create equipos12" do
    visit equipos12s_url
    click_on "New equipos12"

    fill_in "Areas", with: @equipos12.areas_id
    fill_in "Departamento", with: @equipos12.departamento_id
    fill_in "Disco duro", with: @equipos12.disco_duro
    fill_in "Licencia", with: @equipos12.licencia_id
    fill_in "Marca", with: @equipos12.marca_id
    fill_in "Modelo", with: @equipos12.modelo
    fill_in "Observaciones", with: @equipos12.observaciones
    fill_in "Ram", with: @equipos12.ram
    fill_in "Serial", with: @equipos12.serial
    fill_in "Serie", with: @equipos12.serie
    fill_in "Tipo", with: @equipos12.tipo
    fill_in "Tipos", with: @equipos12.tipos_id
    click_on "Create Equipos12"

    assert_text "Equipos12 was successfully created"
    click_on "Back"
  end

  test "should update Equipos12" do
    visit equipos12_url(@equipos12)
    click_on "Edit this equipos12", match: :first

    fill_in "Areas", with: @equipos12.areas_id
    fill_in "Departamento", with: @equipos12.departamento_id
    fill_in "Disco duro", with: @equipos12.disco_duro
    fill_in "Licencia", with: @equipos12.licencia_id
    fill_in "Marca", with: @equipos12.marca_id
    fill_in "Modelo", with: @equipos12.modelo
    fill_in "Observaciones", with: @equipos12.observaciones
    fill_in "Ram", with: @equipos12.ram
    fill_in "Serial", with: @equipos12.serial
    fill_in "Serie", with: @equipos12.serie
    fill_in "Tipo", with: @equipos12.tipo
    fill_in "Tipos", with: @equipos12.tipos_id
    click_on "Update Equipos12"

    assert_text "Equipos12 was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipos12" do
    visit equipos12_url(@equipos12)
    click_on "Destroy this equipos12", match: :first

    assert_text "Equipos12 was successfully destroyed"
  end
end
