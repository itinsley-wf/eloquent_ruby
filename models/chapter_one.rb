# Class which represents a document
class ChapterOne

  #attr_accessor :writable
  attr_accessor :read_only
  attr_accessor :title, :author, :content

  def initialize(title)
    @title = title
  end

  def title=(new_title)
    # You can use any of these implementations
    # if @writable
    #   @title = new_title
    # end
    
    # if not @read_only
    #   @title = new_title
    # end

    if !read_only
      @title = new_title
    end

    # unless @read_only
    #   @title = new_title
    # end
  end

end