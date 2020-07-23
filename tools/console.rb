require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Lucas")
author2 = Author.new("Gabi")

magazine1 = Magazine.new("Time","news")
magazine2 = Magazine.new("People","drama")
magazine3 = Magazine.new("NAT GEO","nature")

article1 = Article.new(author1, magazine3, "article 1")
article2= Article.new(author2, magazine1, "article 2")
article3 = Article.new(author1, magazine2, "article 3")
article4 = Article.new(author2, magazine2, "article 4")
article5 = Article.new(author1, magazine3, "article 5")
article6 = Article.new(author1, magazine3, "article 6")




### DO NOT REMOVE THIS
binding.pry


