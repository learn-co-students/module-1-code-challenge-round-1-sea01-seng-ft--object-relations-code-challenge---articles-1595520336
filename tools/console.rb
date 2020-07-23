require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

spin = Magazine.new("Spin", "Music")
rs = Magazine.new("Rolling Stone", "Music")
hgtv = Magazine.new("HGTV", "Home")
bhg = Magazine.new("Better Homes & Gardens", "Home")

art = Article.new("Bill Smith", spin, "Opening Act")
art2 = Article.new("Fred Wilard", rs, "Comedy")
art3 = Article.new("Pete Johnson", hgtv, "Dressing up your dinner")
art4 = Article.new("Bill Smith", hgtv , "Busted")

bill= Author.new(spin)
fred = Author.new(rs)
pete = Author.new(hgtv)









### DO NOT REMOVE THIS
binding.pry

0
