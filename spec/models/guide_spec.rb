require 'rails_helper'

RSpec.describe Guide, type: :model do
  before do 
      @guide = Guide.create(title: "test title", content: "some test content", published: true)
  end

  describe "Data types" do
    it 'can be toggled between true and false for published' do
      @guide.published = false

      expect(@guide.published).to_not eq(true)
    end
  end

  describe "Creation" do  
    
    it 'can be created' do
        expect(@guide).to be_valid
    end

    it 'cannot be created without title and content' do 
      @guide.title = nil
      @guide.content = nil

      expect(@guide).to_not be_valid
    end
  end
end