feature 'As a user I would like to' do
  scenario 'See a list of bookmarks' do
   visit "/"
  expect(page).to have_content 'Here are your bookmarks:'
  end
end
