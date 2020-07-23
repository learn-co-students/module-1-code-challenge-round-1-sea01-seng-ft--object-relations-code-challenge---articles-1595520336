require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
# Author attr_reader :name
bob = Author.new("Bob")
sue = Author.new("Sue")
gina = Author.new("Gina")


# Magazine attr_accessor :name, :category
time = Magazine.new("Time", "News")

dogster = Magazine.new("Dogster", "Dogs & Cats Magazine")
rolling = Magazine.new("Rolling Stone", "Music Entertainment")

# Article attr_reader :author, :magazine, :title
covid = Article.new(bob, time, "Covid-19")
dog = Article.new(sue, dogster, "Adopt a Dog")
parks = Article.new(sue, dogster, "Dog parks in Seattle")
parks2 = Article.new(sue, time, "Dog parks in Seattle2")
gaga = Article.new(gina, rolling, "Lady GAGAAA")
madonna = Article.new(gina, rolling, "Madonna")
madonna2 = Article.new(gina, time, "Madonna2")
adel = Article.new(gina, time, "Adel")

### DO NOT REMOVE THIS
binding.pry

0
