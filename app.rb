# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark.rb'

class BookmarkWeb < Sinatra::Base
  get '/bookmarks' do
    p ENV
    @bookmark_list = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
