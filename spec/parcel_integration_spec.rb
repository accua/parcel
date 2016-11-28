require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user entry and returns the cost to ship the package.') do
    visit('/')
    fill_in('length', :with => '4')
    fill_in('width', :with => '4')
    fill_in('height', :with => '4')
    fill_in('weight', :with => '500')
    fill_in('distance', :with => '250')
    select('Standard', :from => 'speed')
    click_button('Price My Package!')
    expect(page).to have_content(299)
  end
end
