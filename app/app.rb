require 'sinatra/base'
require_relative 'models/link'
ENV["RACK_ENV"] ||= "development"

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    redirect '/links'
  end

  get '/links' do
    #what does this mean?
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'/links/new'
  end

  post '/links' do
    Link.create(title: params[:title],url:params[:url])
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
