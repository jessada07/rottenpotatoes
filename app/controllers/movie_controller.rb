class MovieController < ApplicationController
  #require ’byebug’ 
  def index
      @movies = Movie.all
  end

  def show
	  id = params[:id] # retrieve movie ID from URI route
	  @movie = Movie.find(id) # look up movie by unique ID
	  # will render app/views/movies/show.html.haml by default
  end

  def new
  # default: render 'new' template
  end

  def create
	  @movie = Movie.create!(movie_params)
	  flash[:notice] = "#{@movie.title} was successfully created."
	  redirect_to movie_index_path
  end

  def edit
	  @movie = Movie.find params[:id]
  end
 
  def update
	  @movie = Movie.find params[:id]
	  @movie.update_attributes!(movie_params)
	  #respond_to do |client_wants|
		#client_wants.html {  redirect_to movie_path(@movie)  } # as before
		#client_wants.xml  {  render :xml => @movie.to_xml   } 
	  #end
	  flash[:notice] = "#{@movie.title} was successfully updated."
	  redirect_to movie_path(@movie)
  end

  def destroy
	  @movie = Movie.find(params[:id])
	  @movie.destroy
	  flash[:notice] = "Movie '#{@movie.title}' deleted."
	  redirect_to movie_index_path
  end
 
  private

  def movie_params
      # require the :film table
  	  # security mesure called 'strong params' where we must permit
  	  # the different attributes (:title, :description) that you 
  	  # want to allow to be written to our database
  	  params.require(:movie).permit(:title, :rating, :description, :release_date);
  end
end
