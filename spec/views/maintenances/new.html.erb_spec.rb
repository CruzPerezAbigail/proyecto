require 'rails_helper'

RSpec.describe "maintenances/new", type: :view do
  before(:each) do
    assign(:maintenance, Maintenance.new())
  end

  it "renders new maintenance form" do
    render

    assert_select "form[action=?][method=?]", maintenances_path, "post" do
    end
  end
end
