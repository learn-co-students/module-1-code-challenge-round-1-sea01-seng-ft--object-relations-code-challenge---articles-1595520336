require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
nathan = Author.new("Nathan")
ahmed = Author.new("Ahmed")
brad = Author.new("Brad")

mag1 = Magazine.new("Time", "News")
mag2 = Magazine.new("Shonen Jump", "Comics" )
mag3 = Magazine.new("NY Times", "Media" )
mag4 = Magazine.new("Sports Illustrated", "Sports" )


art1 = Article.new(nathan, mag1, "how to do this")
art5 = Article.new(nathan, mag1, "not how to do this")
art8 = Article.new(nathan, mag1, "crazy new methods")
art2 = Article.new(ahmed, mag1, "rocking the code")
art2 = Article.new(ahmed, mag2, "eating chips")
art3 = Article.new(brad, mag4, "throwing the football")
art4 = Article.new(nathan, mag3, "writing a story")






### DO NOT REMOVE THIS
binding.pry

0
