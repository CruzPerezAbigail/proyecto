require 'rails_helper'

RSpec.describe "solicituds/new", type: :view do
  before(:each) do
    assign(:solicitud, Solicitud.new(
      area_solicitante: "MyString",
      descripcion: "MyText",
      rfc: nil
    ))
  end

  it "renders new solicitud form" do
    render

    assert_select "form[action=?][method=?]", solicituds_path, "post" do

      assert_select "input[name=?]", "solicitud[area_solicitante]"

      assert_select "textarea[name=?]", "solicitud[descripcion]"

      assert_select "input[name=?]", "solicitud[rfc_id]"
    end
  end
end
