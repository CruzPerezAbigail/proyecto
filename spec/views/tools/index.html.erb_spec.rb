require 'rails_helper'

RSpec.describe "tools/index", type: :view do
  before(:each) do
    assign(:tools, [
      Tool.create!(),
      Tool.create!()
    ])
  end

  it "renders a list of tools" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
