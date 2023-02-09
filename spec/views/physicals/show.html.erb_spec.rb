require 'rails_helper'

RSpec.describe "physicals/show", type: :view do
  before(:each) do
    assign(:physical, Physical.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
