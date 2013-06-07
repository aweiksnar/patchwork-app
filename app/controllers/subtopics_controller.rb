class SubtopicsController < ApplicationController

  before_filter :require_signed_in_user, only: [:create, :update, :edit, :destroy]
  before_filter :authorize_user, only: [:update, :edit, :destroy]

  def authorize_user
    unless Subtopic.find_by_id(params[:id]) == Subtopic.find_by_user_id(session[:user_id]) || User.find_by_id(session[:user_id]).admin == true
      redirect_to :back, notice: "You can't do that..."
    end
  end

  def index
    @subtopics = Subtopic.all
  end

  def show
    @subtopic = Subtopic.find_by_id(params[:id])

    if request.headers['X-PJAX']
      render :layout => false
    end
  end

  def new
    @subtopic = Subtopic.new
  end

  def create
    @subtopic = Subtopic.new
    @subtopic.title = params[:title]
    @subtopic.topic_id = params[:topic_id]
    @subtopic.user_id = session[:user_id]

    article = Article.new
    article.save

    if @subtopic.save
      redirect_to :back
    else
      render 'new'
    end
  end

  def edit
    @subtopic = Subtopic.find_by_id(params[:id])
  end

  def update
    @subtopic = Subtopic.find_by_id(params[:id])
    @subtopic.title = params[:title]
    @subtopic.topic_id = params[:topic_id]

    if @subtopic.save
      redirect_to subtopics_url
    else
      render 'edit'
    end
  end

  def destroy
    @subtopic = Subtopic.find_by_id(params[:id])
    @subtopic.destroy
    redirect_to subtopics_url
  end
end
