require 'rails_helper'

RSpec.describe "zones/show", type: :view do
  before(:each) do
    assign(:zone, Zone.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
