require 'rails_helper'

RSpec.describe "licences/show", type: :view do
  before(:each) do
    assign(:licence, Licence.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
