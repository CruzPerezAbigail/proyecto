require 'rails_helper'

RSpec.describe "equipos/new", type: :view do
  before(:each) do
    assign(:equipo, Equipo.new())
  end

  it "renders new equipo form" do
    render

    assert_select "form[action=?][method=?]", equipos_path, "post" do
    end
  end
end
