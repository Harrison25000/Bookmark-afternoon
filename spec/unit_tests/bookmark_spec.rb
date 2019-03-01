# frozen_string_literal: true

require 'bookmark'
require 'database_helper'
# describe Bookmark do
#   it 'shows a list of bookmarks' do
#     expect(subject.all).to be_a Array
#   end
# end
describe '.all' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_tester')

    # connection.exec("INSERT INTO bookmarks (url)
    #   VALUES ('http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks (url)
    #   VALUES('http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks (url)
    #   VALUES('http://www.google.com');")
    bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    bookmarks = Bookmark.all
    expect(bookmarks[0].url).to eq('http://www.makersacademy.com')
    expect(bookmarks[0].title).to eq('Makers Academy')
    expect(bookmarks[0].id).to eq(bookmark.id)
    expect(bookmarks[0].class).to eq(Bookmark)
    expect(bookmarks.length).to eq(3)
  end

  describe '.create' do
    it 'adds a bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'test bookmark')
      p "hello"
      p bookmark
      p "hi"
      p Bookmark.all
      p "url"
      expect(bookmark.url).to eq "http://www.testbookmark.com"
      expect(bookmark.title).to eq "test bookmark"
    end
  end
end
