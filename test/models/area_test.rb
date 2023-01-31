require "test_helper"

class AreaTest < ActiveSupport::TestCase

   setup do 
   @area = Area :one 
  end 

  test  "should has nombre " do 
    @area.area = nil
    assert_not @area.valid?, message: "nombre presence validation failed "
  end 
end
