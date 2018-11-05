require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest

# Test de la page d'accueil et de la navbar

  test "Test présence lien club non loggin" do
    get root_path
    assert_select("a[href=?]", registration_new_path)
    assert_no_match("a[href=?]", club_path)
    
  end

end
