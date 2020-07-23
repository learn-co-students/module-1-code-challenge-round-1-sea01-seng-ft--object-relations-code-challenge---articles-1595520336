
# - DONE `Article#initialize(author, magazine, title)`
# - DONE An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
# - DONE attr_reader An article **cannot** change its author, magazine, or title after it is has been initialized.
# - DONE attr_reader `Article#title`  # - Returns the title for that given article
# - DONE `Article.all` # - Returns an array of all Article instances

# - DONE `Article#author` - Returns the author for that given article
# - DONE `Article#magazine'  - Returns the magazine for that given article


class Article
  attr_reader :title, :author, :magazine

  @@all = [] 

  def initialize(title, author, magazine)
    @title = title
    @author = author
    @magazine = magazine

    @@all << self
  end

  def self.all 
    @@all 
  end 

 

end
