class HomeController < ApplicationController
  def index

  end

  def show_user
    @like = Like.all
  end

end
