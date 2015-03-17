require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get index_page" do
    get :index_page
    assert_response :success
  end

  test "should get index_complete" do
    get :index_complete
    assert_response :success
  end

end
