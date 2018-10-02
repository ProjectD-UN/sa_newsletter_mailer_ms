require 'test_helper'

class NewsletterTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newsletter_topic = newsletter_topics(:one)
  end

  test "should get index" do
    get newsletter_topics_url, as: :json
    assert_response :success
  end

  test "should create newsletter_topic" do
    assert_difference('NewsletterTopic.count') do
      post newsletter_topics_url, params: { newsletter_topic: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show newsletter_topic" do
    get newsletter_topic_url(@newsletter_topic), as: :json
    assert_response :success
  end

  test "should update newsletter_topic" do
    patch newsletter_topic_url(@newsletter_topic), params: { newsletter_topic: {  } }, as: :json
    assert_response 200
  end

  test "should destroy newsletter_topic" do
    assert_difference('NewsletterTopic.count', -1) do
      delete newsletter_topic_url(@newsletter_topic), as: :json
    end

    assert_response 204
  end
end
