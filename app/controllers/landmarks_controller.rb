class LandmarksController < ApplicationController

  get '/landmarks' do

  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    redirect to "/landmarks/#{@landmark.id}"
  end

  get '/figures/:id' do
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
    erb :'landmarks/edit'
  end

  patch '/landmarks/:id' do
    redirect to "/landmarks/#{@landmark.id}"
  end
end
