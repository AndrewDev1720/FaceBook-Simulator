class ArticlesController < ActionController::Base
  def show
    article1 = Article.find(1)
  end
end
