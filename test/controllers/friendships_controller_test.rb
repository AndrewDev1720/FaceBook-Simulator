require "test_helper"

class FriendshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create!(username: "user", admin: false, email: "qat@gmail.com", password: "123456")
    @user2 = User.create!(username: "user2", admin: false, email: "qat2@gmail.com", password: "123456")
    login_as @user
    @friendship = Friendship.create!(user_id: @user.id, friend_id: @user2.id)
  end

  # test "should get index" do
  #   get friendships_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_friendship_url
  #   assert_response :success
  # end

  test "should create friendship" do
    assert_difference('Friendship.count') do
      post friendships_url, params: { user_id: @user.id, friend_id: @user2.id }
    end

    assert_redirected_to user_url(@user2)
  end

  # test "should show friendship" do
  #   get friendship_url(@friendship)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_friendship_url(@friendship)
  #   assert_response :success
  # end

  # test "should update friendship" do
  #   patch friendship_url(@friendship), params: { friendship: {  } }
  #   assert_redirected_to friendship_url(@friendship)
  # end

  test "should destroy friendship" do
    assert_difference('Friendship.count', -1) do
      delete friendship_url(@friendship)
    end
  end
end
