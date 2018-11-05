require 'test_helper'

class UserTest < ActiveSupport::TestCase

test "Prénom vide" do
    user = User.create(name: " ", email: "b@mail.com", password: "test")
    assert user.invalid?
  end

  test "Prénom qui ne comprend que des espaces" do
    user = User.create(name: "aa ", email: "c@mail.com", password: "test")
    assert user.invalid?
  end

  test "Même email qu'un autre user" do
    user_d = User.create(name: "e", email: "d@mail.com", password: "test")
    user_e = User.create(name: "eqsd", email: "d@mail.com", password: "tedst")
    assert user_e.invalid?
 end
end
