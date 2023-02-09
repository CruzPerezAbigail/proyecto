require 'rails_helper'

RSpec.describe "shapes/index", type: :view do
  before(:each) do
    assign(:shapes, [
      Shape.create!(),
      Shape.create!()
    ])
  end

  it "renders a list of shapes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
