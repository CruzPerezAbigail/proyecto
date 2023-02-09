require 'rails_helper'

RSpec.describe "equipos/index", type: :view do
  before(:each) do
    assign(:equipos, [
      Equipo.create!(),
      Equipo.create!()
    ])
  end

  it "renders a list of equipos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
