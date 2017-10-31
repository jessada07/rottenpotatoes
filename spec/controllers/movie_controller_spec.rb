require 'rails_helper'

RSpec.describe MovieController, type: :controller do
    
    movie = Movie.new
    movie.title = "Batman"
    movie.rating = "R"
    movie.release_date = "2017-10-29 00:00:00"
    movie.description = "Batman is not Superman"
    movie.save
    
    describe "GET #index" do
        it "render the index page" do
            get :index
            expect(response).to render_template :index
        end
    end
    
    describe "GET #show" do
        it "render the show page" do
            get :show, params: { :id => movie.id } 
            expect(response).to render_template :show
        end
    end
        
    describe "GET #new" do
        it "render the create new movie page" do
            get :new
            expect(response).to render_template :new
        end
    end
    
    describe "POST #create" do
        it "post to create page" do
            post :create, :params => {
                :movie => {
                    :title => movie.title, 
                    :rating  => movie.rating,
                    :description => movie.description, 
                    :release_date => movie.release_date
                }
            }
            expect(response).to redirect_to movie_path(movie.id + 1)
        end
    end
    
    describe "GET #edit" do
        it "render the edit page" do
            get :edit, params: { :id => movie.id } 
            expect(response).to render_template :edit
        end
    end
    
    describe "๊UPDATE #update" do
        it "responds to PUT" do
            put :update, :params => {
                :id => movie.id, 
                :movie => {
                    :title => movie.title, 
                    :rating  => movie.rating,
                    :description => movie.description, 
                    :release_date => movie.release_date
                }
            }
          @movie = Movie.find_by_id(movie)
          expect(response).to redirect_to movie_path(movie)
        end
    end

    describe "DELETE #destroy" do
        it "responds to DELETE" do
          movie = Movie.create!
          delete :destroy, :params => { :id => movie.id }
          expect(response).to redirect_to movie_index_path
        end
    end
    
end
