require 'test_helper'

class EqulpBoardControllerTest < ActionController::TestCase
  test "should get post_equlp" do
    get :post_equlp
    assert_response :success
  end

  test "should get reservation_complete" do
    get :reservation_complete
    assert_response :success
  end

  test "should get numstatus_complete" do
    get :numstatus_complete
    assert_response :success
  end

  test "should get status_complete" do
    get :status_complete
    assert_response :success
  end

end
