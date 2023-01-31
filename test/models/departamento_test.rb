require "test_helper"

class DepartamentoTest < ActiveSupport::TestCase
  setup do 
    @departamento = Departamento :one 
   end 
 
   test  "should has nombre " do 
     @departamento.departamento= nil
     assert_not @departamento.valid?, message: "validación de presencia de nombre fallida "
   end 
end
