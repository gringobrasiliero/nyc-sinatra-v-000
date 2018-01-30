class LandmarksController < ApplicationController

  get '/landmarks/new' do
  @landmarks = Landmark.all
  erb :'/landmarks/new'
  end

  post '/figures' do
  @landmark = Landmark.create(params["landmark"])

  if !params["landmark"]["name"].empty?
    @figure.landmarks << Landmark.create(name: params["landmark"][:"name"])
  end

  @figure.save
   redirect to "/landmarks/#{@landmark.id}"
  end

end
