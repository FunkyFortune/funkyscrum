require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "create new user" do
    assert_difference('User.count') do
      post :create, :user => { :email => "asdf@asdf.com", :password => "asdf" }
    end
    
    assert_response :redirect 
    assert_redirected_to root_url
    
  end

  test "create user fails" do
    assert_no_difference('User.count') do
      post :create, :user => { :email => "fdsa@fdsa.com" }
    end

    assert_response :success
  end

end
