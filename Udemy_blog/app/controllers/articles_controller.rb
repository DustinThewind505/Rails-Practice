class ArticlesController < ApplicationController

  def index
    @all_articles = Article.all
  end


  def create
    @article = Article.new(params.require(:article).permit(:title, :description))


    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

end
