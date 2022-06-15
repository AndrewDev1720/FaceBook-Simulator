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
    render plain: params
    @article = Article.new(params.require(:article).permit(:title, :description))

  end

end
