require 'test_helper'

class CommunityBoardControllerTest < ActionController::TestCase
  test "should get cicpost" do
    get :cicpost
    assert_response :success
  end

  test "should get imgpost" do
    get :imgpost
    assert_response :success
  end

  test "should get freepost" do
    get :freepost
    assert_response :success
  end

  test "should get datapost" do
    get :datapost
    assert_response :success
  end

  test "should get eventpost" do
    get :eventpost
    assert_response :success
  end

  test "should get graduatepost" do
    get :graduatepost
    assert_response :success
  end

  test "should get jobpost" do
    get :jobpost
    assert_response :success
  end

  test "should get faqpost" do
    get :faqpost
    assert_response :success
  end

  test "should get posts" do
    get :posts
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get write_complete" do
    get :write_complete
    assert_response :success
  end

  test "should get edit_complete" do
    get :edit_complete
    assert_response :success
  end

  test "should get delete_complete" do
    get :delete_complete
    assert_response :success
  end

  test "should get posts_complete" do
    get :posts_complete
    assert_response :success
  end

end
