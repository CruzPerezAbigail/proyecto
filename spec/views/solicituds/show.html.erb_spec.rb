require 'rails_helper'

RSpec.describe "solicituds/show", type: :view do
  before(:each) do
    assign(:solicitud, Solicitud.create!(
      area_solicitante: "Area Solicitante",
      descripcion: "MyText",
      rfc: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Area Solicitante/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
