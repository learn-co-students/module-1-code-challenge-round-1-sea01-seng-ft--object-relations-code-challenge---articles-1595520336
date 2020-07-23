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

  def article_count 
    articles.count
  end

  def contributors
    articles.map {|article| article.author}
  end

  def Magazine.find_by_name(name)
    Magazine.all.find{|magazine| magazine.name == name}
  end
  
  def article_titles
    articles.map {|article| article.title}
  end

  def article_count
    #counts just the total article titles
    article_titles.count
  end

  def contributors
    articles.map {|article| article.author}
  end
  
  def contributing_authors
    # binding.pry
    contributors.select {|contributor| contributors.count(contributor) >= 3}.uniq

#return an array of authors who have written >=3 articles.

#this could also be compared if their instance appears more than twice.


    # contributors.map {|contributor| contributor.count >=3 }

    #i could use an inject

    
    # contributors.inject(Hash.new(0)) {|h,v| h[v] += 1; h}
    #this returns a hash..

    

#currently nathan 3 articles. 
#ahmed has 1 

#i can select from the contributors and see if there name occurs more than 2 times

  end
end
