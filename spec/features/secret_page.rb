require 'rails_helper'

RSpec.describe 'secret_page behaviour', type: :feature do
  it 'does not show secret without logging in' do
    visit '/secret_page'
    expect(page.body).to have_button 'Login'
  end

  it 'shows the secret after the user logs in' do
    visit '/'
    fill_in :name, with: 'MyName'
    click_on 'Login'
    click_on 'Secret page'
    expect(page.body).to have_content 'Secret content'
  end
end
