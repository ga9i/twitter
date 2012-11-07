require 'test_helper'

class AddEmailAndPasswordToTweetsControllerTest < ActionController::TestCase
  setup do
    @add_email_and_password_to_tweet = add_email_and_password_to_tweets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_email_and_password_to_tweets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_email_and_password_to_tweet" do
    assert_difference('AddEmailAndPasswordToTweet.count') do
      post :create, add_email_and_password_to_tweet: {  }
    end

    assert_redirected_to add_email_and_password_to_tweet_path(assigns(:add_email_and_password_to_tweet))
  end

  test "should show add_email_and_password_to_tweet" do
    get :show, id: @add_email_and_password_to_tweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_email_and_password_to_tweet
    assert_response :success
  end

  test "should update add_email_and_password_to_tweet" do
    put :update, id: @add_email_and_password_to_tweet, add_email_and_password_to_tweet: {  }
    assert_redirected_to add_email_and_password_to_tweet_path(assigns(:add_email_and_password_to_tweet))
  end

  test "should destroy add_email_and_password_to_tweet" do
    assert_difference('AddEmailAndPasswordToTweet.count', -1) do
      delete :destroy, id: @add_email_and_password_to_tweet
    end

    assert_redirected_to add_email_and_password_to_tweets_path
  end
end
