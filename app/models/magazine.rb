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
    Article.all.select {|article| article.magazine == self}
  end

  def contributors
    articles.map {|article| article.author}
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    articles.map {|article| article.title}
  end

  def contributing_authors
    contributors.select {|contributor| contributors.count(contributor) > 2}.uniq
  end
end
