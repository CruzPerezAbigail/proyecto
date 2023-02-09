require 'rails_helper'

RSpec.describe "equipment/index", type: :view do
  before(:each) do
    assign(:equipment, [
      Equipment.create!(),
      Equipment.create!()
    ])
  end

  it "renders a list of equipment" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
