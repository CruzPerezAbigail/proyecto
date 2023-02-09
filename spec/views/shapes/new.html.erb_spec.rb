require 'rails_helper'

RSpec.describe "shapes/new", type: :view do
  before(:each) do
    assign(:shape, Shape.new())
  end

  it "renders new shape form" do
    render

    assert_select "form[action=?][method=?]", shapes_path, "post" do
    end
  end
end
