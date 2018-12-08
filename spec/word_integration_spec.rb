require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# before(:each) do
#   visit('/')
#   fill_in('word', :with => "sample")
#   fill_in('definition', :with => "samples")
#   save_and_open_page
# end

describe('word definer', {:type => :feature}) do
  it('display the input user word') do
    visit('/')
    fill_in('word', :with => "sample")
    click_button('Add word')
    expect(page).to have_content("sample")
  end
  #
  # it('display input user definition') do
  #   click_button('Add word')
  #   expect(page).to have_content("sample")
  # end

  it('display the input user definition') do
    test_word = Word.new({:word => "example", :definition => "example definition"})
      test_word.save_word
    visit('/')
    click_link('example')
    fill_in('definition', :with => "sampler")
    click_button('Add definition')
    expect(page).to have_content("sampler")
  end
end
