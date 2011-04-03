require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "has password" do
    u = users(:pass_is_bob)

    assert u.password_hash.length > 0 
    assert u.password_salt.length > 0
  end

  test "password is required" do
    u = User.new
    u.email = "asdf@asdf.com"

    assert !u.save
  end

  test "email is required" do
    u = User.new
    u.password = "asdf@asdf.com"

    assert !u.save
  end

  test "email is unique" do
    u = User.new
    u.email = "bob@bob.com"
    u.password = "asdf"

    assert !u.save
  end

  test "authentication works"  do
    u = User.authenticate("bob@bob.com", "bob") # correct password

    assert u
  end

  test "authentication fails" do
    u = User.authenticate("bob@bob.com", "asdf") # wrong password

    assert_nil u
  end

  test "roles" do
    pending 
  end
end
