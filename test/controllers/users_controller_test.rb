require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create!(username: "user100", admin: false, email: "qat100@gmail.com", password: "123456")
    login_as @user
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    logout
    get new_user_registration_url
    assert_response :success
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_registration_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_registration_url(@user), params: { user: { username: "user101", admin: true, email: "qat200@gmail.com", password: "123456" } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_registration_url
    end

    assert_redirected_to root_url
  end

  # test "should create user" do
  #   assert_difference('User.count') do
  #     post user_registration_url, params: { user: { username: "user200", email: "qat205@gmail.com", password: "123456" } }
  #   end

  #   assert_redirected_to user_url(User.last)
  # end
end
