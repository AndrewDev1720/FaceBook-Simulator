require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # include Devise::Test::IntegrationHelpers
  setup do
    user = User.create!(username: "user100", admin: false, email: "qat100@gmail.com", password: "123456")
    @article = Article.create(title: 'tester', description: "Hello world100", user_id: user.id)
    login_as user
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count', 1) do
      post articles_url, params: { article: { title: 'test2', description: "Hello world2", user_id:2 } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { title: 'test2', description: "Hello world2", user_id:2 } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
