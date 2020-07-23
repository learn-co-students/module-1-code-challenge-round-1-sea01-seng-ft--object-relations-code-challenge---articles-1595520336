#### Author

# - `Author#initialize(name)`
# -  DONE - An author is initialized with a name, as a string.
# -  DONE -  A name **cannot** be changed after it is initialized.
# - DONE - attr_reader `Author#name`  Returns the name of the author
# - DONE `Author#articles` Returns an array of Article instances the author has written
# - DONE `Author#magazines` Returns a **unique** array of Magazine instances for which the author has contributed to
# - DONE `Author#add_article(magazine, title)` Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
# - DONE `Author#topic_areas` Returns a **unique** array of strings with the categories of the magazines the author has contributed to


class Author
  attr_reader :name

  @@all = [] 

  def initialize(name)
    @name = name
  
    @@all << self 
  end


  def self.all 
    @@all 
  end


  def articles
  #  Returns an array of Article instances the author has written
    Article.all.select do |article|
      article.author == self
    end 

  end 

  def magazines
    # Returns a **unique** array of Magazine instances for which the author has contributed to
    self.articles.map do |article|
      article.magazine
    end.uniq
    
  end

  def add_article(magazine, title)
  # Given a magazine instance and a title  create a new Article instance and associates it with that author and that magazine.
    Article.new(title, self, magazine)

  end

  def topic_areas
  # Returns a **unique** array of strings with the categories of the magazines the author has contributed to
  # Return unique array categories for each magazine the author wrote for 
    magazines.map do |magazine|
      magazine.category
    end.uniq
  end 









end # end class
