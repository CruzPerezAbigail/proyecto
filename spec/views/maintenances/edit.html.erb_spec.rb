require 'rails_helper'

RSpec.describe "maintenances/edit", type: :view do
  let(:maintenance) {
    Maintenance.create!()
  }

  before(:each) do
    assign(:maintenance, maintenance)
  end

  it "renders the edit maintenance form" do
    render

    assert_select "form[action=?][method=?]", maintenance_path(maintenance), "post" do
    end
  end
end
