class PagesController < ApplicationController

  def contact
  end

  def about
  end

  def home
    @categories = Category.all
  end
end
