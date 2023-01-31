require 'rails_helper'

RSpec.describe "solicituds/index", type: :view do
  before(:each) do
    assign(:solicituds, [
      Solicitud.create!(
        area_solicitante: "Area Solicitante",
        descripcion: "MyText",
        rfc: nil
      ),
      Solicitud.create!(
        area_solicitante: "Area Solicitante",
        descripcion: "MyText",
        rfc: nil
      )
    ])
  end

  it "renders a list of solicituds" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Area Solicitante".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
