require_relative '../models/chapter_one'

describe "I understand if, unless and if not" do                            
  before(:each) do
    @doc = ChapterOne.new('a title') 
  end

  describe 'when I set read only to true' do
    before(:each) do
      #@doc.writable=false
      @doc.read_only=true
    end
    it 'will not allow me to update title' do
      @doc.title="a new title"
      p @doc.title
      #!= means not equal to
      (@doc.title != "a new title").should be_true
      #or
      #== means is equal to
      (@doc.title == "a title").should be_true
    end
  end

  describe 'when I set read only to false' do
    before(:each) do
      @doc.read_only=false
    end
    it 'will allow me to update title' do
      @doc.title="a new title"
      (@doc.title == "a new title").should be_true
    end
  end

  describe 'DONT FORGET!!!' do
    it 'you should always get your tests red before they go green to avoid FALSE POSITIVES!' do
    end
  end
end      