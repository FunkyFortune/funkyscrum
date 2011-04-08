require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "should route to dashboard" do 
    assert_routing '/dashboard', { :controller => "dashboard", :action => "index" }
  end

  test "should get dashboard" do 
    get :index
    assert_response :success
  end
end
