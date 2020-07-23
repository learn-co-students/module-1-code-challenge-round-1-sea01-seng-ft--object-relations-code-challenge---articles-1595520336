class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods that assign data
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  #Instance methods that fetch data
  def articles
    Article.all.select { |magazine| magazine.author == self }
  end

  def articles_by_magazine(magazine)
    articles.select { |article| article.magazine == magazine }
  end

  def magazines
    articles.map(&:magazine).uniq
  end

  def topic_areas
    magazines.map(&:category).uniq
  end
end
