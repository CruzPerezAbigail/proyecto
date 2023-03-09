
require "rails_helper"
RSpec.feature "the signin process", :type => :feature do
  before :each do
    Usuario.create(:email => "abigail07cruz@gmail.com", :password => "123456789")
  end

  scenario "signs me in" do
    visit "/usuarios/sign_in"
    within("#new_usuario") do
      fill_in "email", :with => 'abigail07cruz@gmail.com'
      fill_in "password", :with => ""
    end
    click_button "Ingresar"
   
  end
end
