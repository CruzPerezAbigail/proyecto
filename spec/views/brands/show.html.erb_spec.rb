require 'rails_helper'

RSpec.describe "brands/show", type: :view do
  before(:each) do
    assign(:brand, Brand.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
