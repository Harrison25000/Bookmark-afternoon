feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    bookmark = Bookmark.create(url: 'http://www.facebook.com', title: "facebook")
    Bookmark.delete(id: bookmark.id)
    expect(Bookmark.all.length).to eq 0
  end
end
