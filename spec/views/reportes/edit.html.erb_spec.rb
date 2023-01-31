require 'rails_helper'

RSpec.describe "reportes/edit", type: :view do
  let(:reporte) {
    Reporte.create!(
      observaciones: "MyText",
      tipo_problema: "MyString",
      id_mantenimiento: nil
    )
  }

  before(:each) do
    assign(:reporte, reporte)
  end

  it "renders the edit reporte form" do
    render

    assert_select "form[action=?][method=?]", reporte_path(reporte), "post" do

      assert_select "textarea[name=?]", "reporte[observaciones]"

      assert_select "input[name=?]", "reporte[tipo_problema]"

      assert_select "input[name=?]", "reporte[id_mantenimiento_id]"
    end
  end
end
