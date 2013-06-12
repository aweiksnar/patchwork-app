class PagesController < ApplicationController

  def contact

  end

  def about
  end

  def home
    @topics = Topic.all
  end
end
