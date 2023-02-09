require 'rails_helper'

RSpec.describe "tools/show", type: :view do
  before(:each) do
    assign(:tool, Tool.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
