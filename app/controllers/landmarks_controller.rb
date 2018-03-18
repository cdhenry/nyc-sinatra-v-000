class LandmarksController < ApplicationController
  
  get '/landmarks' do

  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/figures' do
    redirect to "/figures/#{@figure.id}"
  end

  get '/figures/:id' do
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    erb :'figures/edit'
  end

  patch '/figures/:id' do
    redirect to "/figures/#{@figure.id}"
  end
end
