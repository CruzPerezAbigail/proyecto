require 'rails_helper'

RSpec.describe "equipos/show", type: :view do
  before(:each) do
    assign(:equipo, Equipo.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
