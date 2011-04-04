require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "user should be logged in" do
    post :create, :email => "bob@bob.com", :password => "bob"

    assert session[:user_id]
    assert_response :redirect
    assert_redirected_to root_url
    
  end

end
