require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
sarika = Author.new('Sarika')
christopher = Author.new('Christopher')

magazine = Magazine.new('Magazine', 'Media')
news = Magazine.new('The News', 'News')

art_one = Article.new(sarika, magazine, 'Article One')
art_two = Article.new(christopher, magazine, 'Article Two')

sarika.add_article(magazine, "Sarika's Article")
sarika.add_article(magazine, "Sarika's Follow Up")

christopher.add_article(news, "Christopher's Editorial")

### DO NOT REMOVE THIS
binding.pry
0
