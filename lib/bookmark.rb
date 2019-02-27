require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname:'bookmark_tester')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  # def all
  #   @bookmark_list = []
  #   BOOKMARKS.each do |bookmark|
  #     @bookmark_list << bookmark[:name]
  #   end
  #   @bookmark_list
  # end
end
