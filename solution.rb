# Please copy/paste all three classes into this file to submit your solution!

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

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name, @category = name, category

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods that fetch data
  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def contributors
    articles.map(&:author).uniq
  end

  def article_titles
    articles.map(&:title)
  end

  def contributing_authors
    contributors.select { |author| author.articles_by_magazine(self).length > 2 }
  end

  #Class methods that fetch data
  def self.find_by_name(name)
    all.find { |magazine| magazine.name == name }
  end
end

class Article
  attr_reader :author, :magazine, :title

  @@all = []

  def initialize(author, magazine, title)
    @author, @magazine, @title = author, magazine, title

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end