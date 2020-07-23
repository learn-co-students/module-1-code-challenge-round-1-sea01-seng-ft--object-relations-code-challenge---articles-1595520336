class Author
  attr_accessor :name


  def initialize(name)
    @name = name
  
  end

  def author 
    Article.all.select {|article| article.author == self}
  end

  def magazines
    author.map{|articles| articles.magazine}.uniq
  end
  
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map{|magazine| magazine.category}.uniq
  end
  
end
