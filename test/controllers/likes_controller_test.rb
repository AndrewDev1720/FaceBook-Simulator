require "test_helper"

class LikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create!(username: "user100", admin: false, email: "qat100@gmail.com", password: "123456")
    Article.create(title: 'tester', description: "Hello world100", user_id: @user.id)
    login_as @user
    @like = Like.create!(user_id: @user.id, likable_id: Article.last.id, likable_type: "Article")
    Article.create(title: 'tester2', description: "Hello world100", user_id: @user.id)
  end

  test "should create like" do
    assert_difference('Like.count') do
      post likes_url, params: {user_id: @user.id, likable_id: Article.last.id, likable_type: "Article"}
    end

    assert_redirected_to articles_url
  end

  test "should destroy like" do
    assert_difference('Like.count', -1) do
      delete like_url(@like)
    end

    assert_redirected_to articles_url
  end

  # test "should get index" do
  #   get likes_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_like_url
  #   assert_response :success
  # end

    # test "should show like" do
  #   get like_url(@like)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_like_url(@like)
  #   assert_response :success
  # end

  # test "should update like" do
  #   patch like_url(@like), params: { like: {  } }
  #   assert_redirected_to like_url(@like)
  # end

end
