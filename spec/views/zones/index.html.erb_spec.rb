require 'rails_helper'

RSpec.describe "zones/index", type: :view do
  before(:each) do
    assign(:zones, [
      Zone.create!(),
      Zone.create!()
    ])
  end

  it "renders a list of zones" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
