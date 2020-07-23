# DELIVERABLES 
# - DONE `Magazine#initialize(name, category)`
# - DONE A magazine is initialized with a name as a string and a category as a string. The name and category of the magazine **can be** changed after being initialized.
# - DONE `Magazine#name` attr_accessor  Returns the name of this magazine
# - DONE `Magazine#category` attr_accessor  Returns the category of this magazine
# - DONE `Magazine.all` # - Returns an array of all Magazine instances
# - DONE `Magazine#contributors` Returns an array of Author instances who have written for this magazine
# - DONE `Magazine.find_by_name(name)`Given a string of magazine's name, this method returns the first magazine object that matches


# - DID NOT DO `Magazine#article_titles`Returns an array strings of the titles of all articles written for that magazine
# - DID NOT DO `Magazine#contributing_authors`- Returns an array of authors who have written more than 2 articles for the magazine




class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  def self.all
    @@all 
  end 


  def articles
    # return all matching magazines 
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors
    # - Returns an array of Author instances who have written for this magazine
    # Brad: return: array of author instances. write a helper method to get all articles for a mag
    articles.map do |article|
      article.author
    end 
  end

  def self.find_by_name(name)
    # Given a string of magazine's name, this method returns the first magazine object that matches.  Match argument 'name' with 'name' of the first mag instancem
  
    article = Article.all.find do |article|
     article.magazine.name == name
    end
   
   article.magazines
   
  end
   


  # - `Magazine#article_titles`
#   - Returns an array strings of the titles of all articles written for that magazine



# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine







end # end class
