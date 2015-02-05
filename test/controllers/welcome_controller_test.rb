require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get why" do
    get :why
    assert_response :success
  end

  test "should get getting_started" do
    get :getting_started
    assert_response :success
  end

end
