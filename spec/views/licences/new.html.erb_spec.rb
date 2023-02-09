require 'rails_helper'

RSpec.describe "licences/new", type: :view do
  before(:each) do
    assign(:licence, Licence.new())
  end

  it "renders new licence form" do
    render

    assert_select "form[action=?][method=?]", licences_path, "post" do
    end
  end
end
