class ArticlesController < ApplicationController

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
    @article = Article.new
    @article.article_title = params[:article_title]
    @article.url = params[:url]
    @article.bookmark = params[:bookmark]
    @article.what_description = params[:what_description]
    @article.why_description = params[:why_description]
    @article.subtopic_id = params[:subtopic_id]
    @article.level = params[:level]

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
    @article.article_title = params[:article_title]
    @article.url = params[:url]
    @article.bookmark = params[:bookmark]
    @article.what_description = params[:what_description]
    @article.why_description = params[:why_description]
    @article.subtopic_id = params[:subtopic_id]

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
