require 'rails_helper'

RSpec.describe "zones/new", type: :view do
  before(:each) do
    assign(:zone, Zone.new())
  end

  it "renders new zone form" do
    render

    assert_select "form[action=?][method=?]", zones_path, "post" do
    end
  end
end
