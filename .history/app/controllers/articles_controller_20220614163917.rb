class ArticlesController < ActionController::Base
  def show()
      # byebug
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

end
