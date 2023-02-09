require 'rails_helper'

RSpec.describe "physicals/edit", type: :view do
  let(:physical) {
    Physical.create!()
  }

  before(:each) do
    assign(:physical, physical)
  end

  it "renders the edit physical form" do
    render

    assert_select "form[action=?][method=?]", physical_path(physical), "post" do
    end
  end
end
