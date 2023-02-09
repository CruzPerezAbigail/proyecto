require 'rails_helper'

RSpec.describe "shapes/show", type: :view do
  before(:each) do
    assign(:shape, Shape.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
