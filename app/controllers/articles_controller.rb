class ArticlesController < ApplicationController

  before_filter :require_signed_in_user, only: [:create, :update, :edit, :destroy]
  before_filter :authorize_user, only: [:update, :edit, :destroy]

  def authorize_user
    unless Article.find_by_id(params[:id]).user_id == session[:user_id]
      redirect_to :back, notice: "Hey, funny story...You can't do that."
    end
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])

    if @article.save
     redirect_to articles_url
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    @article = Article.find_by_id(params[:id])
    @article.title = params[:title]
    @article.url = params[:url]
    @article.bookmark = params[:bookmark]
    @article.description = params[:description]
    @article.subtopic_id = params[:subtopic_id]
    @article.level = params[:level]

    if @article.save
      redirect_to articles_url
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find_by_id(params[:id])
    @article.destroy
    redirect_to articles_url
  end
end
