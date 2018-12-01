require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word definer', {:type => :feature}) do

  it('display the input user word') do
    visit('/')
    fill_in('word', :with => "sample")
    click_button('Add word')
    expect(page).to have_content("sample")
  end

  it('display the input user definition') do
    visit('/output/:id')
    fill_in('definition', :with => "sample definition")
    click_button('Add definition')
    expect(page).to have_content("sample definition")
  end
end
