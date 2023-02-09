require 'rails_helper'

RSpec.describe "departaments/index", type: :view do
  before(:each) do
    assign(:departaments, [
      Departament.create!(),
      Departament.create!()
    ])
  end

  it "renders a list of departaments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
