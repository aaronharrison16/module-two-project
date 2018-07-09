require 'rails_helper'

describe 'navigate' do
  before do 
    visit guides_path
  end

  describe 'index' do
    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end

    it 'it has a title of guides' do 
      expect(page).to have_content(/Guides/)
    end
  end
end
  
describe 'navigation' do 
  before do 
    visit new_guide_path
  end

  it 'has a new form that can be reached' do
    expect(page.status_code).to eq(200)
  end

  it 'can be created from new form page' do
    fill_in 'guide[title]', with: 'Test title'
    fill_in 'guide[content]', with: 'Some test content'
    click_on 'Save'

    expect(page).to have_content('Test title')
  end
end