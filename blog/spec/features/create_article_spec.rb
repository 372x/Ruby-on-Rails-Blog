require 'rails_helper'

feature "user creates an article" do
  scenario "the article is created" do
    visit root_path
    click_on "My Blog"
    click_on "New article"
    fill_in "Title", with: 'I Passed My Test'
    fill_in "Text", with: 'This is fun!'
    expect do
    click_on "Create Article"
    end.to change {Article.count}.by 1
  end  
end  # end of this test
