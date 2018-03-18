class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
     if !params["pet"]["name"].empty?
       @owner.pets << Pet.create(name: params["pet"]["name"])
     end
     @owner.save
  
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
