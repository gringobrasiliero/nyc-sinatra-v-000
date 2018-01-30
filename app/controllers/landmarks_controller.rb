class LandmarksController < ApplicationController

  get '/landmarks/new' do
  @landmarks = Landmark.all
  erb :'/landmarks/new'
  end

  post '/landmarks' do
  @landmark = Landmark.create(params["landmark"])

  if !params["landmark"]["name"].empty?
    @landmarks.name << Landmark.create(name: params["landmark"][:"name"])
  end

  @figure.save
   redirect to "/landmarks/#{@landmark.id}"
  end

get '/landmarks' do
  @landmarks = Landmark.all
  erb :'/landmarks/index'
end

get '/landmarks/:id' do
     @landmark = Landmark.find(params[:id])
     erb :'/landmarks/show'
   end

get '/landmarks/:id/edit' do
  @landmark = Landmark.find(params[:id])
  erb :'/landmarks/edit'
end

patch '/landmarks/:id' do
@landmark = Landmark.find(params[:id])
@landmark.update(params[:figure])
if !params["landmark"]["name"].empty?
  @landmarks.name << Landmark.update(name: params["landmark"][:"name"])
end
if !params["landmark"]["year_completed"].empty?
  @landmarks.year_completed << Landmark.update(year_completed: params["landmark"][:"year_completed"])
end

@figure.save
 redirect to "/figures/#{@figure.id}"
end
end
