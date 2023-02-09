require 'rails_helper'

RSpec.describe "shapes/edit", type: :view do
  let(:shape) {
    Shape.create!()
  }

  before(:each) do
    assign(:shape, shape)
  end

  it "renders the edit shape form" do
    render

    assert_select "form[action=?][method=?]", shape_path(shape), "post" do
    end
  end
end
