require 'rails_helper'

RSpec.describe "reportes/index", type: :view do
  before(:each) do
    assign(:reportes, [
      Reporte.create!(
        observaciones: "MyText",
        tipo_problema: "Tipo Problema",
        id_mantenimiento: nil
      ),
      Reporte.create!(
        observaciones: "MyText",
        tipo_problema: "Tipo Problema",
        id_mantenimiento: nil
      )
    ])
  end

  it "renders a list of reportes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Tipo Problema".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
