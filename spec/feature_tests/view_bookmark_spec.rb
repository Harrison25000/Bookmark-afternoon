feature 'List of bookmarks' do
  scenario 'We receive a list' do
    visit '/bookmarks'
    expect(page).to have_content 'Here are your bookmarks:'
    expect(page).to have_content 'Bookmark 1' and 'Bookmark 2'
  end
end
