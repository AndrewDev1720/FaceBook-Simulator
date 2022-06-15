class ArticlesController < ActionController::Base
  def show()
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    render(:plain)
  end

end
