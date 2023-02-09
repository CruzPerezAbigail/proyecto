require 'rails_helper'

RSpec.describe "licences/edit", type: :view do
  let(:licence) {
    Licence.create!()
  }

  before(:each) do
    assign(:licence, licence)
  end

  it "renders the edit licence form" do
    render

    assert_select "form[action=?][method=?]", licence_path(licence), "post" do
    end
  end
end
