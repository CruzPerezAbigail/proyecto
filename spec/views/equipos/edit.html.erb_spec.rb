require 'rails_helper'

RSpec.describe "equipos/edit", type: :view do
  let(:equipo) {
    Equipo.create!()
  }

  before(:each) do
    assign(:equipo, equipo)
  end

  it "renders the edit equipo form" do
    render

    assert_select "form[action=?][method=?]", equipo_path(equipo), "post" do
    end
  end
end
