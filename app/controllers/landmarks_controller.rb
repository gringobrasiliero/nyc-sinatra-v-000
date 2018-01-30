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

end
