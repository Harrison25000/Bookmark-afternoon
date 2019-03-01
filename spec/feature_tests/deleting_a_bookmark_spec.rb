feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
<<<<<<< HEAD
    bookmark = Bookmark.create('http://www.facebook.com')
    Bookmark.delete('http://www.facebook.com')
    exepct(Bookmark).to eq []
=======
    bookmark = Bookmark.create(url: 'http://www.facebook.com', title: "facebook")
    Bookmark.delete(id: bookmark.id)
    expect(Bookmark.all.length).to eq 0
>>>>>>> d1e68b84c829a234a0c7aee625a3fee1079b2b12
  end
end
