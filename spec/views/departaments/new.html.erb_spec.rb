require 'rails_helper'

RSpec.describe "departaments/new", type: :view do
  before(:each) do
    assign(:departament, Departament.new())
  end

  it "renders new departament form" do
    render

    assert_select "form[action=?][method=?]", departaments_path, "post" do
    end
  end
end
