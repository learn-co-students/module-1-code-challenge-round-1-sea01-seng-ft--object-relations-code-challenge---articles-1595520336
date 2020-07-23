require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# Author initialize(name)Author
author1 = Author.new("Name 1 ")
author2 = Author.new("Name 2")
author3 = Author.new("Name 3")
author4 = Author.new("Name 4")
author5 = Author.new("Name 5")
author6 = Author.new("Name 6")
author7 = Author.new("Name 7")
author8 = Author.new("Name 8")
author9 = Author.new("Name 9")


# Magazine initialize(name, category)
mag1 = Magazine.new("Mag 1", "Cat 1")
mag2 = Magazine.new("Mag 2", "Cat 2")
mag3 = Magazine.new("Mag 3", "Cat 1")
mag4 = Magazine.new("Mag 2", "Cat 3")
mag5 = Magazine.new("Mag 2 ", "Cat 2")
mag6 = Magazine.new("Mag 2 ", "Cat 2")


# Article initialize(title, author, magazine)
article1 = Article.new("Title 1", author1, mag1 )
article2 = Article.new("Title 2", author1, mag1 )
article3 = Article.new("Title 3", author1, mag2 )
article4 = Article.new("Title 4", author1, mag3 )
article5 = Article.new("Title 5", author1, mag2 )
article6 = Article.new("Title 6", author2, mag4 )






### DO NOT REMOVE THIS
binding.pry

0
