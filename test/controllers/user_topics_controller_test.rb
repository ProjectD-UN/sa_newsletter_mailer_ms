require 'test_helper'

class UserTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_topic = user_topics(:one)
  end

  test "should get index" do
    get user_topics_url, as: :json
    assert_response :success
  end

  test "should create user_topic" do
    assert_difference('UserTopic.count') do
      post user_topics_url, params: { user_topic: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_topic" do
    get user_topic_url(@user_topic), as: :json
    assert_response :success
  end

  test "should update user_topic" do
    patch user_topic_url(@user_topic), params: { user_topic: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_topic" do
    assert_difference('UserTopic.count', -1) do
      delete user_topic_url(@user_topic), as: :json
    end

    assert_response 204
  end
end
