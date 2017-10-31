require 'rails_helper'

RSpec.describe Session, type: :model do
    
    # Create
    it 'Create session' do
        my_session = Session.create!
        expect(my_session).to_not eq(nil)
    end
    
    # Read
    it "Read name" do
       my_session = Session.create!(:name => "Superman")
       expect(my_session.name).to eq("Superman")
    end
    
    it "Read provider" do
       my_session = Session.create!(:provider => "facebook")
       expect(my_session.provider).to eq("facebook")
    end
    
    it "Read uid" do
       my_session = Session.create!(:uid => "ABCDEFG")
       expect(my_session.uid).to eq("ABCDEFG")
    end
    
    # it "Read image" do
    #   my_session = Session.create!(:image => "http://www.picture.com/123.png")
    #   expect(my_session.image).to eq("http://www.picture.com/123.png")
    # end

    # Update
    it "Update name" do
        my_session = Session.create!(:name => "Superman")
        my_session.name = "Batman"
        my_session.save
        my_session = Session.find(my_session.id)
        expect(my_session.name).to eq("Batman")
    end
    
    it "Update provider" do
        my_session = Session.create!(:provider => "facebook")
        my_session.provider = "twitter"
        my_session.save
        my_session = Session.find(my_session.id)
        expect(my_session.provider).to eq("twitter")
    end
    
    it "Update uid" do
        my_session = Session.create!(:uid => "ABCDEF")
        my_session.uid = "BATCAT"
        my_session.save
        my_session = Session.find(my_session.id)
        expect(my_session.uid).to eq("BATCAT")
    end
    
    # it "Update image" do
    #     my_session = Session.create!(:image => "http://www.picture.com/123.png")
    #     my_session.image = "http://www.image.com/bit.jpg"
    #     my_session.save
    #     my_session = Session.find(my_session.id)
    #     expect(my_session.image).to eq("http://www.image.com/bit.jpg")
    # end
    
    # Delete
    it "Delete movie" do
        my_session = Session.create!(:name => "Superman")
        my_session.destroy
        my_session = Session.find_by_id(my_session.id)
        expect(my_session).to eq(nil)
    end
    
end
