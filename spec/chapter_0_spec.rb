require_relative '../models/document'

describe "I know how require_relative works" do                            
  it 'its in this document on line 1 and it has a relative path to the file im testing' 
  describe 'it allows me to instantiate the document as an instance variable (using @)' do
    before(:each) do
      @doc = Document.new( 'a title', 'an author', 'some words') 
    end

    it 'I can use the instance variable in a different block of code' do
      @doc.content.should eql('some words')
    end

    it 'I can call other methods on the document' do
      @doc.word_count.should eql(2)
    end

    it 'I can print string to the command line' do
      #This will be output on the command line (or STDOUT)
      p @doc.content
    end
  end

end      