class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def show
  @article = Article.find(params[:id])
  end

  def create
    @article = Article.new


    @article.save
    format.html {redirect_to @article, notice: 'Article was successfully created.'}
  end

  def update
    #empty, future usage.
  end


end
