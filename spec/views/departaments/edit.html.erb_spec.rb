require 'rails_helper'

RSpec.describe "departaments/edit", type: :view do
  let(:departament) {
    Departament.create!()
  }

  before(:each) do
    assign(:departament, departament)
  end

  it "renders the edit departament form" do
    render

    assert_select "form[action=?][method=?]", departament_path(departament), "post" do
    end
  end
end
