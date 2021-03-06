require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

before(:each) do
  visit('/')
  fill_in('word', :with => "sample")
  fill_in('definition', :with => "samples")
  save_and_open_page
end

describe('word definer', {:type => :feature}) do
  it('display the input user word') do
    visit('/')
    fill_in('word', :with => "sample")
    click_button('Add word')
    expect(page).to have_content("sample")
  end

  it('display the input user definition') do
    test_word = Word.new({:word => "example", :definition => "example definition"})
      test_word.save_word
    visit('/')
    click_link('example')
    click_button('Add definition')
    expect(page).to have_content("example definition")
  end

  it('display additional input user definitions') do
    test_word = Word.new({:word => "example2", :definition => "example2 definition"})
      test_word.save_word
    visit('/')
    click_link('example2')
    fill_in('definition', :with => "additional definition")
    click_button('Add definition')
    expect(page).to have_content("example2 definition")
    expect(page).to have_content("additional definition")
  end
end
