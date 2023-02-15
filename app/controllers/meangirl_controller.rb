class MeangirlsController < ApplicationController
    set :default_content_type, 'application/json'
    
    get '/meangirls' do
        Meangirl.all.to_json
      end

    get "/meangirls/get_superlative" do
        Meangirl.get_superlative.to_json
    end
    
    get "/meangirls/most_popular" do
        Meangirl.most_popular.to_json
    end

    get "/meangirls/:id" do
    Meangirl.find(params[:id]).to_json
    end


    post '/meangirls' do
        new_meanie = Meangirl.create(name: params[:name], number_of_parties: params[:number_of_parties], superlative: params[:superlative], year: params[:year])
        new_meanie.to_json
    end

    patch "/meangirls/:id" do
        student = Meangirl.find(params[:id])
        student.update(name: params[:name], number_of_parties: params[:number_of_parties], superlative: params[:superlative], year: params[:year])
        student.to_json
    end


    delete '/meangirls/:id' do
        student = Meangirl.find(params[:id])
        student.destroy
    end
end