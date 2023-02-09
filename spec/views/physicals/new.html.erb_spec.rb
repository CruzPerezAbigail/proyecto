require 'rails_helper'

RSpec.describe "physicals/new", type: :view do
  before(:each) do
    assign(:physical, Physical.new())
  end

  it "renders new physical form" do
    render

    assert_select "form[action=?][method=?]", physicals_path, "post" do
    end
  end
end
