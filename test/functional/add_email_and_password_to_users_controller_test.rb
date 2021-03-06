require 'test_helper'

class AddEmailAndPasswordToUsersControllerTest < ActionController::TestCase
  setup do
    @add_email_and_password_to_user = add_email_and_password_to_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_email_and_password_to_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_email_and_password_to_user" do
    assert_difference('AddEmailAndPasswordToUser.count') do
      post :create, add_email_and_password_to_user: {  }
    end

    assert_redirected_to add_email_and_password_to_user_path(assigns(:add_email_and_password_to_user))
  end

  test "should show add_email_and_password_to_user" do
    get :show, id: @add_email_and_password_to_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_email_and_password_to_user
    assert_response :success
  end

  test "should update add_email_and_password_to_user" do
    put :update, id: @add_email_and_password_to_user, add_email_and_password_to_user: {  }
    assert_redirected_to add_email_and_password_to_user_path(assigns(:add_email_and_password_to_user))
  end

  test "should destroy add_email_and_password_to_user" do
    assert_difference('AddEmailAndPasswordToUser.count', -1) do
      delete :destroy, id: @add_email_and_password_to_user
    end

    assert_redirected_to add_email_and_password_to_users_path
  end
end
