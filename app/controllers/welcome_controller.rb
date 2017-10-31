class WelcomeController < ApplicationController
  def index
    if current_user
      redirect_to movie_index_path
    end
  end
  def signup
  end
  def create
  end
end
  