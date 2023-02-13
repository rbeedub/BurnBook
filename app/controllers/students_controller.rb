class StudentsController < ApplicationController
    set :default_content_type, 'application/json'
    
    get '/students' do
        Student.all.to_json
      end
  
      get "/students/:id" do
         Student.find(params[:id]).to_json
      end
  
  
      post '/students' do
          new_kid = Student.create(name: params[:name], type_of_uncool: params[:type_of_uncool], year: params[:year])
          new_kid.to_json
      end
  
      patch "/students/:id" do
          student = Student.find(params[:id])
          student.update(name: params[:name], type_of_uncool: params[:type_of_uncool])
          student.to_json
      end
  
  
      delete '/students/:id' do
          student = Student.find(params[:id])
          student.destroy
      end
end