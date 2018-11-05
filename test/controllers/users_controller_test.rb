require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
	#Non login
  
  test "Accès interdit à la page de club si pas login" do
    get users_path
    assert_no_match("h3", 'Liste des membres du club')
end
	#Prénom vite

test "Prénom vide" do
    user = User.create(name: " ", email: "b@mail.com", password: "test")
    assert user.invalid?
  end

    #Caractéristiques prénom

  test "Prénom qui ne comprend que des espaces" do
    user = User.create(name: "aa ", email: "c@mail.com", password: "test")
    assert user.invalid?
  end

  	#Conditions insciption

  test "Même email qu'un autre user" do
    user_d = User.create(name: "e", email: "d@mail.com", password: "test")
    user_e = User.create(name: "eqsd", email: "d@mail.com", password: "tedst")
    assert user_e.invalid?
 end

 	#Accès page show

  test "Accès à la page show si connecté" do
    post users_path, params: { user: {name: "test8", email: "test8@test.com", password: "test8"} }
    post registration_create_path, params: { session: { email: "test8@test.com", password: "test8"} }
    get users_path                     

end
end
