require 'rails_helper'

RSpec.describe "tools/edit", type: :view do
  let(:tool) {
    Tool.create!()
  }

  before(:each) do
    assign(:tool, tool)
  end

  it "renders the edit tool form" do
    render

    assert_select "form[action=?][method=?]", tool_path(tool), "post" do
    end
  end
end
