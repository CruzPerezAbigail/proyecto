require "test_helper"

class ShapeControllerTest < ActionDispatch::IntegrationTest
 

  test "should get index" do
    get shapes_path
    assert_response :success
    assert_select '.shape', 2
  end

  
end
