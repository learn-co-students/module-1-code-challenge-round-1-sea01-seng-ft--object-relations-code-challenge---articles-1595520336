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