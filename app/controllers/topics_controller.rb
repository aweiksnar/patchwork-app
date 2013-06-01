class TopicsController < ApplicationController

  def index
    if params[:search]
    @topics = Topic.where("title LIKE ?", "%#{params[:search]}%")
    else
    @topics = Topic.all
    end
  end

  def show
    @topic = Topic.find_by_id(params[:id])
    @article = Article.new
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new
    @topic.title = params[:title]
    @topic.category_id = params[:category_id]
    @topic.description = @topic.scrape_description(params[:wiki_url])

    if @topic.save
      redirect_to topics_url
    else
      render 'new'
    end
  end

  def edit
    @topic = Topic.find_by_id(params[:id])
  end

  def update
    @topic = Topic.find_by_id(params[:id])
    @topic.title = params[:title]
    @topic.category_id = params[:category_id]
    @topic.description = params[:description]

    if @topic.save
      redirect_to topics_url
    else
      render 'edit'
    end
  end

  def destroy
    @topic = Topic.find_by_id(params[:id])
    @topic.destroy

    redirect_to topics_url
  end

  def beg_articles
    @vote = Vote.new
    @topic = Topic.find_by_id(params[:id])
    @article = Article.new
    @articles = Article.where(:level => 1)

    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def int_articles
    @articles = Article.where(:level => 2)
    @topic = Topic.find_by_id(params[:id])
    @article = Article.new
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def adv_articles
    @articles = Article.where(:level => 3)
    @topic = Topic.find_by_id(params[:id])
    @article = Article.new
    if request.headers['X-PJAX']
      render :layout => false
    end
  end

end
