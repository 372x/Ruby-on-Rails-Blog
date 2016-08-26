require 'rails_helper'

feature "user updates article" do
  let!(:article) {create :article}  # for comments

  scenario "article is updated" do
    visit articles_path
    within "tr", text:article.title do
      click_on "Edit"
    end
    fill_in "Title", with: 'I Updated My Article'
    fill_in "Text", with: 'This is still lots of fun!'
    click_on "Update Article"
    puts page.text
    expect(page).to have_content 'I Updated My Article'
  end  
end