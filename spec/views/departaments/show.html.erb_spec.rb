require 'rails_helper'

RSpec.describe "departaments/show", type: :view do
  before(:each) do
    assign(:departament, Departament.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
