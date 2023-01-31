require 'rails_helper'

RSpec.describe "reportes/show", type: :view do
  before(:each) do
    assign(:reporte, Reporte.create!(
      observaciones: "MyText",
      tipo_problema: "Tipo Problema",
      id_mantenimiento: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Tipo Problema/)
    expect(rendered).to match(//)
  end
end
