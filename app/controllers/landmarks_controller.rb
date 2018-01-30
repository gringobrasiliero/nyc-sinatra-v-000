class LandmarksController < ApplicationController

  get '/landmarks/new' do
  @landmarks = Landmark.all
  erb :'/landmarks/new'
  end


end
