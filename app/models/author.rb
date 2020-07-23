class Author
  attr_reader :name, :article, :magazine

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # using the article class
  #adds new Article 

  def add_article(magazine, title)
    Article.new(magazine, title)

  end


  #look at the Magazines class
  #find the categories of the magazines that the author has done.
  #returns uniq array 
  def topic_areas
    Magazine.all.map { |author| author.category}.uniq
    #binding.pry
  end


end
