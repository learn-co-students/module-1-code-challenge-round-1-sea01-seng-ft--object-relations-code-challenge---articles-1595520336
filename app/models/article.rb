class Article
  attr_reader :author, :magazine, :title

  @@all = []

  def initialize(author, magazine, title)
    @author, @magazine, @title = author, magazine, title

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end