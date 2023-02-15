class CommentsController < ApplicationController
    set :default_content_type, 'application/json'
   
    get '/comments' do
        Comment.all.to_json(include: [:meangirl, :student])
    end

    # get '/comments/:id' do
    #     this_comment=Comment.find(params[:id])
    #     this_comment.to_json(include: :meangirls)
    # end

    # get "/comments/:id" do
    #     Comment.find(params[:id]).to_json
    # end

    patch "/comments/id/up_cool_factor" do
        Comment.find(params[:id]).up_cool_factor.to_json
    end

    patch "/comments/id/down_cool_factor" do
        Comment.find(params[:id]).down_cool_factor.to_json
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