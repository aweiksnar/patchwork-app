class CategoriesController < ApplicationController

  before_filter :require_signed_in_user, only: [:create, :update, :edit, :destroy]
  before_filter :authorize_admin, only: [:create, :update, :edit, :destroy]

  def authorize_admin
    unless User.find_by_id(session[:user_id]).present? && User.find_by_id(session[:user_id]).admin == true
      redirect_to root_url, notice: "Gotta be an admin for that"
    end
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by_id(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.title = params[:title]

    if @category.save
      redirect_to categories_url
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find_by_id(params[:id])
  end

  def update
    @category = Category.find_by_id(params[:id])
    @category.title = params[:title]

    if @category.save
      redirect_to categories_url
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find_by_id(params[:id])
    @category.destroy
      redirect_to categories_url
    end
end
