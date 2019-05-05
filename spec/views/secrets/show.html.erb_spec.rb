require 'rails_helper'

RSpec.describe 'secrets/show.html.erb', type: :view do
  it 'shows the secret' do
    render
    expect(rendered).to have_content 'Secret content'
  end
end
