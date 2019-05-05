require 'rails_helper'

RSpec.describe 'sessions/new.html.erb', type: :view do
  it 'has a :name field' do
    render
    expect(rendered).to have_field :name
  end

  it 'has a login button' do
    render
    expect(rendered).to have_button 'Login'
  end
end
