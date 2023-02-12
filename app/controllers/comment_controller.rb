class CommentController < ApplicationController
    set :default_content_type, 'application/json'
    
    # Add your routes here
  
    
  
    get "/comment" do
      { message: "Comments will go here!" }.to_json
    end
  
  end