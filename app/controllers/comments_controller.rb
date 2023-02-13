class CommentsController < ApplicationController
    set :default_content_type, 'application/json'
   
    get '/comments' do
      Comment.all.to_json
    end

    get "/comments/:id" do
       Comment.find(params[:id]).to_json
    end


    post '/comments' do
        Comment.new(comment: params[:comment], level_of_uncool: params[:level_of_uncool]).to_json
    end

    patch "/comments/:id" do
        comment = Comment.find(params[:id])
        comment.update(comment: params[:comment])
        comment.to_json
    end


    delete '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.destroy
    end


end