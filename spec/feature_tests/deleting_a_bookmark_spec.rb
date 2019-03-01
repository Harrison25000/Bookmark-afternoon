feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    bookmark = Bookmark.create('http://www.facebook.com')
    Bookmark.delete('http://www.facebook.com')
    exepct(Bookmark).to eq []
  end
end
