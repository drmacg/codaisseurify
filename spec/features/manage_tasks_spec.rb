require 'rails_helper'

feature 'Create a song', js: true do
  scenario 'add a new song' do
    # Point your browser towards the todo path
    visit 'http://localhost:3000/artists/1'

    # Enter description in the text field
    fill_in 'song_track_number', with: '4'
    fill_in 'song_name', with: 'Capybara song'
    fill_in 'song_duration', with: '3:45'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Capybara song')
  end
end
