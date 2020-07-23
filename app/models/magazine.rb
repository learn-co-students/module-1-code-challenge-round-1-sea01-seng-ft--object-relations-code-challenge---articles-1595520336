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

  def magazine_objects
    Article.all.select {|article| article.magazine == self}
  end

  def contributors
    magazine_objects.collect {|article| article.author}
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    magazine_objects.collect {|article| article.title}
  end

  def contributing_authors
 
  end


end
