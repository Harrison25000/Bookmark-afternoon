# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark.rb'
require 'pg'

class BookmarkWeb < Sinatra::Base

  get '/bookmarks' do
    p ENV
    @bookmark_list = Bookmark.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :"/bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
  run! if app_file == $0
end
