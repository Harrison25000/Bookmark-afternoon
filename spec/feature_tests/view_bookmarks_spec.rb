# frozen_string_literal: true

require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    # connection = PG.connect(dbname: 'bookmark_tester')
    # connection.exec("INSERT INTO bookmarks
    #   VALUES(1, 'http://www.makersacademy.com', 'makers academy');")
    # connection.exec("INSERT INTO bookmarks
    #   VALUES(2, 'http://www.destroyallsoftware.com', 'destroyer');")
    # connection.exec("INSERT INTO bookmarks
    #   VALUES(3, 'http://www.google.com', 'google');")
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'makers academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'destroyer')
    Bookmark.create(url: 'http://www.google.com', title: 'google')

    visit('/bookmarks')

    expect(page).to have_link('makers academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('destroyer', href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('google', href:'http://www.google.com')
  end
end
