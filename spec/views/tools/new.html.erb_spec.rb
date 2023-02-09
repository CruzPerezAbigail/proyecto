require 'rails_helper'

RSpec.describe "tools/new", type: :view do
  before(:each) do
    assign(:tool, Tool.new())
  end

  it "renders new tool form" do
    render

    assert_select "form[action=?][method=?]", tools_path, "post" do
    end
  end
end
