require 'rails_helper'

RSpec.describe Movie, :type => :model do
    # Create
    it 'Create movie' do
        movie = Movie.create!
        expect(movie).to_not eq(nil)
    end
    
    # Read
    it "Read title movie" do
       movie = Movie.create!(:title => "Superman")
       expect(movie.title).to eq("Superman")
    end
    
    it "Read rating of movie" do
        movie = Movie.create!(:rating => "G")
        expect(movie.rating).to eq("G")
    end
    
    it "Read description of movie" do
        movie = Movie.create!(:description => "Superman is not Joker")
        expect(movie.description).to eq("Superman is not Joker")
    end
    
    it "Read release_date of movie" do
        movie = Movie.create!(:release_date => "2017-10-29 00:00:00")
        expect(movie.release_date).to eq("2017-10-29 00:00:00")
    end
    
    # Update
    it "Update title movie" do
        movie = Movie.create!(:title => "Superman")
        movie.title = "Batman"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.title).to eq("Batman")
    end
    
    it "Update rating movie" do
        movie = Movie.create!(:rating => "G")
        movie.rating = "R"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.rating).to eq("R")
    end
    
    it "Update description movie" do
        movie = Movie.create!(:description => "Superman is not Joker")
        movie.description = "Batman is rich"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.description).to eq("Batman is rich")
    end
    
    it "Update release_date movie" do
        movie = Movie.create!(:release_date => "2017-10-29 00:00:00")
        movie.release_date = "2016-08-10 11:11:11"
        movie.save
        movie = Movie.find(movie.id)
        expect(movie.release_date).to eq("2016-08-10 11:11:11")
    end
    
    # Delete
    it "Delete movie" do
        movie = Movie.create!(:title => "Superman")
        movie.destroy
        movie = Movie.find_by_id(movie.id)
        expect(movie).to eq(nil)
    end
end
