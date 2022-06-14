class ArticlesController < ActionController::Base
  def show()
      # byebug
    @article = Article.find(params[:id])
  end
end
