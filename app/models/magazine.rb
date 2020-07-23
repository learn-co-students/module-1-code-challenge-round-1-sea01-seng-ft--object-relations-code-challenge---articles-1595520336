class Magazine
  attr_accessor :name, :category, :contributors

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    

    @@all << self

  end

  def self.all
    @@all
  end

    #iterate over Magazine.all 
    #return the magazines name that matches
  def self.find_by_name(name)
    all.find_all {|magazine|magazine.name == name}
  end

      #iterate over the Article class
      #find all the titles that match for that magazine
      #return just the titles
  def article_titles
    Article.all.find { |article| article.magazine == title}
  end

    #iterate over the Article class
    #find the authors who have written for that magazine
    # compare how many they have written for that magazine 
    #return authors if > 2
  def contributing_authors
    Article.all.count { |title| title.magazine == self}
    binding.pry
  end


end
