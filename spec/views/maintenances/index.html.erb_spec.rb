require 'rails_helper'

RSpec.describe "maintenances/index", type: :view do
  before(:each) do
    assign(:maintenances, [
      Maintenance.create!(),
      Maintenance.create!()
    ])
  end

  it "renders a list of maintenances" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
