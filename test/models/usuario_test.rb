require "test_helper"

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save user without email" do
    usuario = Usuario.new
    assert_not usuario.save
  end
end
