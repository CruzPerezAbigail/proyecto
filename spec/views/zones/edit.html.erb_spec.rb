require 'rails_helper'

RSpec.describe "zones/edit", type: :view do
  let(:zone) {
    Zone.create!()
  }

  before(:each) do
    assign(:zone, zone)
  end

  it "renders the edit zone form" do
    render

    assert_select "form[action=?][method=?]", zone_path(zone), "post" do
    end
  end
end
