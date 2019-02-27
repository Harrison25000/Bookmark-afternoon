# require 'bookmark_tester'
# require 'pg'
# describe '.all' do
#   it "takes from database" do
#    connection = PG.connect(dbname: 'bookmark_tester')
#    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://makersacademy.com');")
#    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
#    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
#
#    visit('/bookmarks')
#
#    expect(page).to have_content "http://www.makersacademy.com"
#    expect(page).to have_content "http://www.destroyallsoftware.com"
#    expect(page).to have_content "http://www.google.com"
#   end
# end
