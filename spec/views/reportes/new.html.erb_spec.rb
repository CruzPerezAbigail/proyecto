require 'rails_helper'

RSpec.describe "reportes/new", type: :view do
  before(:each) do
    assign(:reporte, Reporte.new(
      observaciones: "MyText",
      tipo_problema: "MyString",
      id_mantenimiento: nil
    ))
  end

  it "renders new reporte form" do
    render

    assert_select "form[action=?][method=?]", reportes_path, "post" do

      assert_select "textarea[name=?]", "reporte[observaciones]"

      assert_select "input[name=?]", "reporte[tipo_problema]"

      assert_select "input[name=?]", "reporte[id_mantenimiento_id]"
    end
  end
end
