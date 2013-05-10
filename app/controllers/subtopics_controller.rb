class SubtopicsController < ApplicationController

  def index
    @subtopics = Subtopic.all
  end

  def show
    @subtopic = Subtopic.find_by_id(params[:id])
  end

  def new
    @subtopic = Subtopic.new
  end

  def create
    @subtopic = Subtopic.new
    @subtopic.title = params[:subtopic_title]
    @subtopic.topic_id = params[:topic_id]

    if @subtopic.save
            redirect_to subtopics_url
          else
      render 'new'
    end
  end

  def edit
    @subtopic = Subtopic.find_by_id(params[:id])
  end

  def update
    @subtopic = Subtopic.find_by_id(params[:id])
    @subtopic.title = params[:subtopic_title]
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
