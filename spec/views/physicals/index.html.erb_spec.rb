require 'rails_helper'

RSpec.describe "physicals/index", type: :view do
  before(:each) do
    assign(:physicals, [
      Physical.create!(),
      Physical.create!()
    ])
  end

  it "renders a list of physicals" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
