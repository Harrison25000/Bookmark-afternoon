# frozen_string_literal: true

require 'pg'

class Bookmark
  attr_reader :id, :title, :url

  def initialize(id:, url:, title:)
    @id = id
    @url = url
    @title = title
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_tester')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec('SELECT * FROM bookmarks')
    result.map do |bookmark_list|
       Bookmark.new(id: bookmark_list['id'],title: bookmark_list['title'], url: bookmark_list['url'])
     end
  end



  def self.create(url:, title:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_tester')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
    Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])


  end

<<<<<<< HEAD




=======
  def self.delete(id:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_tester')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec("DELETE FROM bookmarks WHERE id = #{id}")
  end
>>>>>>> d1e68b84c829a234a0c7aee625a3fee1079b2b12
end
