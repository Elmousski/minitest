require 'test_helper'

class RegistrationControllerTest < ActionDispatch::IntegrationTest

test "Login d'utilisateur normal" do
 	post users_path, params:{ user:{name: "test5", email: "test5@test.com", password: "test5" } }  
    post registration_create_path, params: { session: { email: "test5@test.com", password: "test5"} } 
    get club_path
   end

  test "Présence message d'erreur quand mauvais mail au login" do
    post users_path, params: { user: { name: "test6", email: "test6@test.com", password: "test6"} }
    post registration_create_path, params: { session: { email: "test_false6@test.com", password: "test6" } }
    assert invalid_login_password_path
  end

end
