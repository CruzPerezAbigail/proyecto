require 'rails_helper'

RSpec.describe "solicituds/edit", type: :view do
  let(:solicitud) {
    Solicitud.create!(
      area_solicitante: "MyString",
      descripcion: "MyText",
      rfc: nil
    )
  }

  before(:each) do
    assign(:solicitud, solicitud)
  end

  it "renders the edit solicitud form" do
    render

    assert_select "form[action=?][method=?]", solicitud_path(solicitud), "post" do

      assert_select "input[name=?]", "solicitud[area_solicitante]"

      assert_select "textarea[name=?]", "solicitud[descripcion]"

      assert_select "input[name=?]", "solicitud[rfc_id]"
    end
  end
end
