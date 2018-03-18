class FiguresController < ApplicationController

  get '/figures' do

  end

  get '/figures/new' do
    erb :'figures/new'
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
